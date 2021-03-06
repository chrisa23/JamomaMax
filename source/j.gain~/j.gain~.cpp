/** @file
 *
 * @ingroup implementationMaxExternalsDSP
 *
 * @brief j.gain~ : wraps the #TTGain class as a a Jamoma external for MSP
 *
 * @details
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright © 2005 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTClassWrapperMax.h"
#include "ext.h"						// Max Header
#include "z_dsp.h"						// MSP Header
#include "ext_strings.h"				// String Functions
#include "commonsyms.h"					// Common symbols used by the Max 4.5 API
#include "ext_obex.h"					// Max Object Extensions (attributes) Header

#include "TTDSP.h"
#define MAX_NUM_CHANNELS 32

// Data Structure for this object
typedef struct _gain {
	t_pxobject 		obj;
	TTAudioObject*	xfade;				// crossfade object from the Jamoma DSP library
	TTAudioObject*	gain;				// gain control object the Jamoma DSP library
	TTAudio*		signalIn;
	TTAudio*		signalOut;
	TTAudio*		signalTemp;
	TTUInt16		numChannels;
	char			attrBypass;			// toggle 1 = bypass
	float			attrMix;			// mix in %
	float			attrGain;			// gain in midi units
} t_gain;


// Prototypes for methods
void*		gain_new(t_symbol *s, long argc, t_atom *argv);					// New Object Creation Method
void		gain_free(t_gain *x);											// Object Deletion Method
void		gain_dsp64(t_gain *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags); // DSP64 Method
void		gain_assist(t_gain *x, void *b, long m, long a, char *s);		// Assistance Method
t_int*		gain_perform(t_int *w);											// MSP Perform Method
t_max_err	attr_set_gain(t_gain *x, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_mix(t_gain *x, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_bypass(t_gain *x, void *attr, long argc, t_atom *argv);


// Globals
static t_class*	s_gain_class;


/************************************************************************************/
// Define our class

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	t_class *c;
	
	TTDSPInit();
	common_symbols_init();

	c = class_new("j.gain~", (method)gain_new, (method)gain_free, sizeof(t_gain), (method)0L, A_GIMME, 0);

	// Make methods accessible for our class: 
	class_addmethod(c, (method)gain_dsp64,				"dsp64", A_CANT, 0);
    class_addmethod(c, (method)gain_assist, 			"assist", A_CANT, 0L);

	CLASS_ATTR_CHAR(c,		"bypass",	0,		t_gain,	attrBypass);
	CLASS_ATTR_ACCESSORS(c,	"bypass",	NULL,	attr_set_bypass);
	
	CLASS_ATTR_FLOAT(c,		"mix",		0,		t_gain,	attrBypass);
	CLASS_ATTR_ACCESSORS(c,	"mix",		NULL,	attr_set_mix);
	
	CLASS_ATTR_FLOAT(c,		"gain",		0,		t_gain,	attrBypass);
	CLASS_ATTR_ACCESSORS(c,	"gain",		NULL,	attr_set_gain);
		
	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	s_gain_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void* gain_new(t_symbol* s, long argc, t_atom* argv)
{
	long	attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short	i;
	t_gain*	x = (t_gain*)object_alloc(s_gain_class);

	if(x){
		x->numChannels = 1;
		if(attrstart && argv){
			int argument = atom_getlong(argv);
			x->numChannels = TTClip(argument, 1, MAX_NUM_CHANNELS);
		}

		dsp_setup((t_pxobject*)x, x->numChannels * 2);			// Create Object and Inlets
		x->obj.z_misc = Z_NO_INPLACE;							// ESSENTIAL!   		
		for(i=0; i < x->numChannels; i++)
			outlet_new((t_pxobject*)x, "signal");				// Create a signal Outlet
		
		x->xfade		= new TTAudioObject("crossfade", x->numChannels);
		x->gain			= new TTAudioObject("gain", x->numChannels);
		x->signalTemp	= new TTAudio(x->numChannels);
		x->signalOut	= new TTAudio(x->numChannels);
		x->signalIn		= new TTAudio(x->numChannels*2);
		
		x->xfade->set("position", 1.0);		// defaults
		x->gain->set("linearGain", 0.0);
		
		x->attrBypass = 0;
		x->attrGain = 0;

		attr_args_process(x, argc, argv);						// handle attribute args				
	}
	return (x);													// Return the pointer
}

// Destroy
void gain_free(t_gain *x)
{
	dsp_free((t_pxobject *)x);		// Always call dsp_free first in this routine
	delete x->xfade;
	delete x->gain;
	delete x->signalTemp;
	delete x->signalOut;
	delete x->signalIn;
}

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void gain_assist(t_gain *x, void *b, long msg, long arg, char *dst)
{   	
	if (msg==1) { 	// Inlets
		if (arg == 0)
			snprintf(dst, 256, "(signal) raw audio (ch. %ld), control messages", arg+1);
		else if(arg < x->numChannels)
			snprintf(dst, 256, "(signal) raw audio (ch. %ld)", arg+1);
		else if(arg >= x->numChannels)
			snprintf(dst, 256, "(signal) wet audio (ch. %ld)", arg-x->numChannels+1);
	}
	else if (msg==2) // Outlets		
		snprintf(dst, 256, "(signal) processed audio (ch. %ld)", arg+1);  
}



// ATTRIBUTE: gain
t_max_err attr_set_gain(t_gain *x, void *attr, long argc, t_atom *argv)
{
	x->attrGain = atom_getfloat(argv);
	x->gain->set("midiGain", x->attrGain);
	return MAX_ERR_NONE;
}


// ATTRIBUTE: mix
t_max_err attr_set_mix(t_gain *x, void *attr, long argc, t_atom *argv)
{
	x->attrMix = atom_getfloat(argv);
	if(x->attrBypass == 0)
		x->xfade->set("position", x->attrMix * 0.01);
	return MAX_ERR_NONE;
}


// ATTRIBUTE: bypass
t_max_err attr_set_bypass(t_gain *x, void *attr, long argc, t_atom *argv)
{
	x->attrBypass = atom_getlong(argv);
	if(x->attrBypass == 0)
		x->xfade->set("position", x->attrMix * 0.01);
	else
		x->xfade->set("position", 0.0);
	return MAX_ERR_NONE;
}


void gain_perform64(t_gain *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam)
{
	short		i;
	TTUInt16	vs = x->signalIn->getVectorSizeAsInt();

	// We sort audioIn so that all channels of signalA comes first, then all channels of signalB
	for (i=0; i < numouts; i++) {
		x->signalIn->setVector(i, vs, ins[i]);
		x->signalIn->setVector(i+numouts, vs, ins[i+numouts]); 
	}
	
	x->xfade->process(x->signalIn, x->signalTemp);	// perform bypass and/or mix operation on processed input
	x->gain->process(x->signalTemp, x->signalOut);	// perform gain boost/cut on processed/bypassed input
	
	for (i=0; i < numouts; i++)
		x->signalOut->getVectorCopy(i, vs, outs[i]); //getVector doesn't seem to work
}



void gain_dsp64(t_gain *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	short		i, k, j; 
	TTUInt16	numChannels = 0;
	
	for (i=0; i < x->numChannels; i++) {
		j = x->numChannels + i;
		k = x->numChannels*2 + i;
		if (count[i] && count[j] && count[k]) {
			numChannels++;			
		}
	}
	
	x->signalIn->setNumChannels(numChannels*2);
	x->signalOut->setNumChannels(numChannels);
	x->signalTemp->setNumChannels(numChannels);
	
	x->signalIn->setVectorSizeWithInt((TTUInt16)maxvectorsize);
	x->signalOut->setVectorSizeWithInt((TTUInt16)maxvectorsize);
	x->signalTemp->setVectorSizeWithInt((TTUInt16)maxvectorsize);
	
	//signalIn will be set in the perform method
	x->signalOut->alloc();
	x->signalTemp->alloc();
	
	x->xfade->set(kTTSym_sampleRate, samplerate);
	x->gain->set(kTTSym_sampleRate, samplerate);
	x->gain->set("interpolated", true);
	object_method(dsp64, gensym("dsp_add64"), x, gain_perform64, 0, NULL);
}

