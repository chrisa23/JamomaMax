/* 
 * j.model | view
 * External for Jamoma : the main control center of a model | view patcher
 * By Tim Place and Théo de la Hogue, Copyright � 2010
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "j.model.h"

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTContainerClass;
	spec->_new = &WrappedContainerClass_new;
	spec->_free = &WrappedContainerClass_free;
	spec->_any = &WrappedContainerClass_anything;
    
    TTModel::registerClass();
    
#ifndef JCOM_VIEW
	return wrapTTModularClassAsMaxClass(kTTSym_Container, "j.model", NULL, spec);
#else
	return wrapTTModularClassAsMaxClass(kTTSym_Container, "j.view", NULL, spec);
#endif
}

void WrapTTContainerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)model_assist,                      "assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)model_share_patcher_info,          "share_patcher_info",	A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_share_patcher_node,          "share_patcher_node",	A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)model_return_address,              "return_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_return_value,                "return_value",			A_CANT, 0);
    
    class_addmethod(c->maxClass, (method)model_return_upper_view_model_address,"return_upper_view_model_address", A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)model_help,                        "model_help",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_reference,                   "model_reference",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_open,                        "model_open",           A_CANT, 0);
//	class_addmethod(c->maxClass, (method)model_mute,                        "model_mute",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_address,                     "model_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_autodoc,                     "doc_generate",			A_CANT, 0);
    
    class_addmethod(c->maxClass, (method)model_preset_return_names,         "return_names",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_preset_filechanged,          "filechanged",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)model_preset_read,                 "preset_read",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_preset_write,                "preset_write",			A_CANT, 0);
    
    class_addmethod(c->maxClass, (method)model_preset_read_again,           "preset_read_again",	A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_preset_write_again,          "preset_write_again",	A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)model_preset_edit,                 "dblclick",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_preset_edclose,              "edclose",				A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)model_preset_read,                 "preset:read",			A_GIMME, 0);
	class_addmethod(c->maxClass, (method)model_preset_write,                "preset:write",			A_GIMME, 0);
	class_addmethod(c->maxClass, (method)model_preset_edit,                 "preset:edit",			A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)model_preset_read_again,           "preset:read/again",	0);
	class_addmethod(c->maxClass, (method)model_preset_write_again,          "preset:write/again",	0);
    
    class_addmethod(c->maxClass, (method)model_signal_return_content,       "return_content",		A_CANT, 0);
    
    class_addmethod(c->maxClass, (method)model_signal_return_data_mute,     "return_data_mute",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_signal_return_data_bypass,   "return_data_bypass",	A_CANT, 0);
    class_addmethod(c->maxClass, (method)model_signal_return_data_freeze,   "return_data_freeze",	A_CANT, 0);
    class_addmethod(c->maxClass, (method)model_signal_return_data_preview,  "return_data_preview",  A_CANT, 0);
    
    class_addmethod(c->maxClass, (method)model_signal_return_audio_mute,    "return_audio_mute",	A_CANT, 0);
    class_addmethod(c->maxClass, (method)model_signal_return_audio_bypass,  "return_audio_bypass",  A_CANT, 0);
    class_addmethod(c->maxClass, (method)model_signal_return_audio_mix,     "return_audio_mix",     A_CANT, 0);
    class_addmethod(c->maxClass, (method)model_signal_return_audio_gain,    "return_audio_gain",	A_CANT, 0);
	
	CLASS_ATTR_LONG(c->maxClass,		"load_default",	0,		WrappedModularInstance,	extra);
	CLASS_ATTR_DEFAULT(c->maxClass,		"load_default",	0,		"1");
	CLASS_ATTR_ACCESSORS(c->maxClass,	"load_default",			model_preset_get_load_default,	model_preset_set_load_default);
	CLASS_ATTR_STYLE(c->maxClass,		"load_default",	0,		"onoff");
    
    CLASS_ATTR_ATOM(c->maxClass,        "amenities",	0,		WrappedModularInstance,	extra);
	CLASS_ATTR_DEFAULT(c->maxClass,		"amenities",	0,		"all");
	CLASS_ATTR_ACCESSORS(c->maxClass,	"amenities",			model_get_amenities, model_set_amenities);
	CLASS_ATTR_STYLE(c->maxClass,		"amenities",	0,		"text");
}

void WrappedContainerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
		
	// create a container
	jamoma_container_create((ObjectPtr)x, &x->wrappedObject);
	
#ifndef JCOM_VIEW
	x->patcherContext = kTTSym_model;
	x->wrappedObject->setAttributeValue(kTTSym_service, kTTSym_model);
#else
	x->patcherContext = kTTSym_view;
	x->wrappedObject->setAttributeValue(kTTSym_service, kTTSym_view);
#endif
		
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// Prepare memory to store internal datas
	x->internals = new TTHash();
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
    EXTRA->model = NULL;
    EXTRA->argAddress = kTTAdrsEmpty;
    EXTRA->text = NULL;
	EXTRA->textEditor = NULL;
    EXTRA->presetManager = NULL;
    EXTRA->attr_load_default = true;
	EXTRA->filewatcher = NULL;
	EXTRA->toEdit = x->wrappedObject;
	EXTRA->presetName = kTTSymEmpty;
    EXTRA->readingContent = NO;
    EXTRA->attr_amenities = new TTHash();
    EXTRA->all_amenities = NO;
    EXTRA->no_amenities = NO;
    
    EXTRA->attr_amenities->append(TTSymbol("all"), kTTValNONE);
    
    // handle attribute args
	attr_args_process(x, argc, argv);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)model_subscribe, NULL, 0, 0);
}

void WrappedContainerClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTAddress    modelAddress, presetAddress;
    TTValue      v;
    
    if (EXTRA->model) {
        
        // get the modelAddress from the model:address
        EXTRA->model->getAttributeValue(kTTSym_address, v);
        modelAddress = v[0];
        modelAddress = modelAddress.appendAddress(TTAddress("model"));
        
        // remove the preset node
        JamomaDirectory->TTNodeRemove(modelAddress);
        
        // delete the model
        TTObjectBaseRelease(&EXTRA->model);
    }
    
    if (EXTRA->presetManager) {
        
        // ed the presetAddress from the presetManager:address
        EXTRA->presetManager->getAttributeValue(kTTSym_address, v);
        presetAddress = v[0];
        presetAddress = presetAddress.appendAddress(TTAddress("preset"));
        
        // remove the preset node
        JamomaDirectory->TTNodeRemove(presetAddress);
        
        // delete the preset manager
        TTObjectBaseRelease(&EXTRA->presetManager);
    }
    
    // delete filewatcher
	if (EXTRA->filewatcher) {
		filewatcher_stop(EXTRA->filewatcher);
		object_free(EXTRA->filewatcher);
	}
    
	free(EXTRA);
}

void model_subscribe(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
    TTNodePtr                   returnedNode = NULL;
    TTNodePtr                   returnedContextNode = NULL;
    TTNodePtr                   returnedModelNode = NULL;;
	TTObjectBasePtr				aReceiver;
	TTTextHandlerPtr			aTextHandler;
	TTBoolean					isSubModel, newInstanceCreated;
	TTAddress                   returnedAddress, adrs;
	AtomCount					ac;
	AtomPtr						av;
	ObjectPtr					aPatcher = jamoma_patcher_get((ObjectPtr)x);

	// if the subscription is successful
	if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, kTTAdrsEmpty, &x->subscriberObject, returnedAddress, &returnedNode, &returnedContextNode)) {
		
		// get all info relative to our patcher
		jamoma_patcher_get_info((ObjectPtr)x, &x->patcherPtr, x->patcherContext, x->patcherClass, x->patcherName);
		
		// set the address attribute of the Container 
		x->wrappedObject->setAttributeValue(kTTSym_address, returnedAddress);
        
		// if the j.model|j.view is well subscribed
		if (aPatcher == x->patcherPtr && x->patcherContext != kTTSymEmpty) {
            
            // create a model object (for j.view too !)
            TTObjectBaseInstantiate(TTSymbol("Model"), &(EXTRA->model), args);
            
            // set his class attribute
            EXTRA->model->setAttributeValue(TTSymbol("class"), x->patcherClass);
            
            // suscribe it under a model node
            adrs = returnedAddress.appendAddress(TTAddress("model"));
            
            if (JamomaDirectory->TTNodeCreate(adrs, EXTRA->model, x->patcherPtr, &returnedModelNode, &newInstanceCreated))
                object_error((ObjectPtr)x, "can't subscribe model object");
            
            // In model patcher : set model:address with the model address
			if (x->patcherContext == kTTSym_model)
				EXTRA->model->setAttributeValue(kTTSym_address, returnedAddress);
            
            // Get patcher arguments
			ac = 0;
			av = NULL;
			
			// If x is in a bpatcher, the patcher is NULL
			if (!aPatcher)
				aPatcher = object_attr_getobj(x, _sym_parentpatcher);
			
			jamoma_patcher_get_args(aPatcher, &ac, &av);
			
			// check if it's a sub model
			isSubModel = atom_getsym(av) == _sym_p;
			
			// in subpatcher the name of the patcher is part of the argument
			if (jamoma_patcher_get_hierarchy(aPatcher) == _sym_subpatcher) {
				ac--;
				av++;
			}
			
			// j.model case :
			if (x->patcherContext == kTTSym_model) {
                
                // use patcher arguments to setup the model attributes (like @priority and @amenities)
				if (ac && av)
					attr_args_process(x, ac, av);
                
                // Create internal TTTextHandler (for documention and preset management)
                aTextHandler = NULL;
                TTObjectBaseInstantiate(kTTSym_TextHandler, TTObjectBaseHandle(&aTextHandler), args);
                v = TTValue(aTextHandler);
                x->internals->append(kTTSym_TextHandler, v);
                v = TTValue(x->wrappedObject);
                aTextHandler->setAttributeValue(kTTSym_object, v);
                
                if (!EXTRA->attr_amenities->lookup(TTSymbol("all"), v))
                    EXTRA->all_amenities = YES;
                
                if (!EXTRA->attr_amenities->lookup(TTSymbol("none"), v))
                    EXTRA->no_amenities = YES;
                
                // Add amenities relative to preset informations
                if (model_test_amenities(self, TTSymbol("preset")))
                    
                    // add preset managment features
                    model_preset_amenities(self);
                
                // Add amenities relative to signal informations
                if (model_test_amenities(self, TTSymbol("data")) || model_test_amenities(self, TTSymbol("audio"))) {
                    
                    // observe model's content to create signal in/out datas
                    makeInternals_receiver(self, returnedAddress, kTTSym_content, gensym("return_content"), &aReceiver, YES, YES); // we need to deferlow to avoid lock crash on TTContainer content
                    aReceiver->sendMessage(kTTSym_Get);
                }
			}
			
			// In view patcher : see in model_subscribe_view
			if (x->patcherContext == kTTSym_view)
                model_subscribe_view(self, _sym_nothing, ac, av);

			// output ContextNode address
			t_atom a;
			x->subscriberObject->getAttributeValue(TTSymbol("contextNodeAddress"), v);
            
            if (v.size() == 1) {
                returnedAddress = v[0];
                atom_setsym(&a, gensym((char*)returnedAddress.c_str()));
                object_obex_dumpout(self, gensym("address"), 1, &a);
            }
			
			// init the model (but not subModel)
			if (!isSubModel)
				defer_low(x, (method)model_init, 0, 0, 0L);
		}
	}
}

void model_subscribe_view(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTObjectBasePtr aReceiver;
    SymbolPtr		hierarchy;
    ObjectPtr		aPatcher;
    TTList          whereToSearch;
    TTBoolean       isThere;
    TTNodePtr       firstTTNode;
    TTAddress       modelAdrs, argAdrs, viewAdrs;
    TTValue         v;
    
    hierarchy = jamoma_patcher_get_hierarchy(x->patcherPtr);
    
    // if the view is inside a bpatcher
    if (hierarchy == _sym_bpatcher)
        // look for a model of the same class into the patcher of the bpatcher to get his model/address
        jamoma_patcher_get_model_patcher(jamoma_patcher_get(x->patcherPtr), x->patcherClass, &aPatcher);
    else
        // look for a model of the same class into the patcher to get his model/address
        jamoma_patcher_get_model_patcher(x->patcherPtr, x->patcherClass, &aPatcher);
    
    // if a model exists
    if (aPatcher) {
        
        // is there a container (e.g. a j.model) registered with the same context in this model patcher ?
        whereToSearch.append(JamomaDirectory->getRoot());
        JamomaDirectory->IsThere(&whereToSearch, &testNodeContext, (TTPtr)aPatcher, &isThere, &firstTTNode);
        
        if (isThere) {
            
            firstTTNode->getAddress(modelAdrs);
            
            // set the model:address attribute to notify all observers
            EXTRA->model->setAttributeValue(kTTSym_address, modelAdrs);
            return;
        }
        
        // deferlow to try another time because the model patcher is maybe not ready
        else {
            defer_low((ObjectPtr)x, (method)model_subscribe_view, _sym_nothing, argc, argv);
            return;
        }
    }
    
    // else, if args exists, the first argument of the patcher is the model/address value
    else if (argc > 0 && atom_gettype(argv) == A_SYM) {
        
        argAdrs = TTAddress(atom_getsym(argv)->s_name);
        
        // if the address is absolute : use it directly
        if (argAdrs.getType() == kAddressAbsolute)
            modelAdrs = argAdrs;
        
        // in case of relative address : try to use the upper view patcher model:address (else use root)
        else {
            
            // keep the argument address
            EXTRA->argAddress = argAdrs;
            
            // get the address attribute of the Container
            x->wrappedObject->getAttributeValue(kTTSym_address, v);
            viewAdrs = v[0];
            
            // observe upper view model:address attribute
            makeInternals_receiver(self, viewAdrs.getParent(), TTAddress("model:address"), gensym("return_upper_view_model_address"), &aReceiver, YES); // we need to deferlow to avoid lock crash on TTContainer content
            aReceiver->sendMessage(kTTSym_Get);
        }
    }
    
    // check if the model address have been filled or not (see in model_return_upper_view_model_address)
    EXTRA->model->getAttributeValue(kTTSym_address, v);
    modelAdrs = v[0];
    
    // if the model:address is still empty : the view is not binding a model for instant
    if (modelAdrs == kTTSymEmpty)
        modelAdrs = TTAddress("/noModelAddress");
    
    // set the model:address attribute to notify all observers
    EXTRA->model->setAttributeValue(kTTSym_address, modelAdrs);
}

void model_return_upper_view_model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTAddress       upperViewModelAddress;
    TTValue         v, o, out;
    
    jamoma_ttvalue_from_Atom(v, msg, argc, argv);
    upperViewModelAddress = v[0];
    
    // append argAddress stored in model_view_subscribe
    if (upperViewModelAddress != kTTSymEmpty)
        upperViewModelAddress = upperViewModelAddress.appendAddress(EXTRA->argAddress);
    else
        upperViewModelAddress = kTTAdrsRoot.appendAddress(EXTRA->argAddress);
    
    // set the model:address attribute to notify all observers
    EXTRA->model->setAttributeValue(kTTSym_address, upperViewModelAddress);
}

void model_init(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTBoolean	initialized;
	TTValue		v;
	
	// Check if the model has not been initialized by a upper model
	x->wrappedObject->getAttributeValue(kTTSym_initialized, v);
	initialized = v[0];
	if (!initialized)
		x->wrappedObject->sendMessage(kTTSym_Init);
}

// Method for Assistance Messages
void model_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else {							// Outlets
		switch(arg) {
			case data_out:
				if (x->patcherContext == kTTSym_model)
					strcpy(dst, "model feeback");
				else if (x->patcherContext == kTTSym_view)
					strcpy(dst, "view feeback");
				else 
					strcpy(dst, "feeback");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

void model_share_patcher_info(TTPtr self, TTValuePtr patcherInfo)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	patcherInfo->clear();
	
	if (x->patcherPtr && x->patcherContext != kTTSymEmpty && x->patcherClass != kTTSymEmpty && x->patcherName != kTTSymEmpty) {
		patcherInfo->append((TTPtr)x->patcherPtr);
		patcherInfo->append(x->patcherContext);
		patcherInfo->append(x->patcherClass);
		patcherInfo->append(x->patcherName);
	}
}

void model_share_patcher_node(TTPtr self, TTNodePtr *patcherNode)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;
	
	if (x->subscriberObject) {
		x->subscriberObject->getAttributeValue(TTSymbol("contextNode"), v);
		*patcherNode = TTNodePtr((TTPtr)v[0]);
	}
}

void model_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// the msg have to contains a relative address
	jamoma_container_send((TTContainerPtr)x->wrappedObject, msg, argc, argv);
}

void WrappedContainerClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// the msg have to contains a relative address
	jamoma_container_send((TTContainerPtr)x->wrappedObject, msg, argc, argv);
}

void model_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	x->msg = msg;
}

void model_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	outlet_anything(x->outlets[data_out], x->msg, argc, argv);
}

void model_help(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// opening the module helpfile (no help file dedicated for model or view)
	if (x->patcherClass != kTTSymEmpty) {
		
		SymbolPtr helpfileName;
		jamoma_edit_filename(*HelpPatcherFormat, x->patcherClass, &helpfileName);
		classname_openhelp((char*)helpfileName->s_name);
	}
}

void model_reference(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (x->patcherContext != kTTSymEmpty && x->patcherClass != kTTSymEmpty) {
		
		SymbolPtr refpagefileName;
		jamoma_edit_filename(*RefpageFormat, x->patcherClass, &refpagefileName);
		classname_openrefpage((char*)refpagefileName->s_name);
	}
}

void model_open(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	ObjectPtr p = jamoma_patcher_get((ObjectPtr)x);
	
	object_method(p, _sym_vis);
}

void model_autodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)model_doautodoc, msg, argc, argv);
}

void model_doautodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char				filename[MAX_FILENAME_CHARS];
	TTSymbol			fullpath;
	TTValue				o, v;
	TTTextHandlerPtr	aTextHandler;
	TTErr				tterr;
	
	if (x->wrappedObject) {
		
		// Default HTML file name
		snprintf(filename, MAX_FILENAME_CHARS, DocumentationFormat->data(), x->patcherClass.c_str());
		fullpath = jamoma_file_write((ObjectPtr)x, argc, argv, filename);
		v.append(fullpath);
		
		tterr = x->internals->lookup(TTSymbol("TextHandler"), o);
		
		if (!tterr) {
			aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)o[0]);
			
			critical_enter(0);
			aTextHandler->sendMessage(TTSymbol("Write"), v, kTTValNONE);
			critical_exit(0);
		}
	}
}

/*
void model_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	ObjectPtr					patcher = jamoma_patcher_get((ObjectPtr)x);
	long						mute;
	t_atom						a[2];
	
	// 'setrock' is the message that is used by pcontrol to enable patcher
	// it was inside former j.in or out. Not sure for what it was used (audio mute maybe...)
	
	if (argc && argv)
		if (atom_gettype(argv) == A_LONG) {
			mute = atom_getlong(argv);
			atom_setlong(a+0, !mute);
			atom_setlong(a+1, 1);
			object_method(patcher, gensym("setrock"), 2, a);
		}
}
*/

void model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// In view patcher only
	if (x->patcherContext == kTTSym_view) {
		
		if (atom_gettype(argv) == A_SYM) {
            
			TTAddress modelAdrs = TTAddress(atom_getsym(argv)->s_name);
            
            // set the model:address attribute to notify all observers
            EXTRA->model->setAttributeValue(kTTSym_address, modelAdrs);
		}
	}
}

t_max_err model_get_amenities(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av)
{
    WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTValue keys;
    
    EXTRA->attr_amenities->getKeysSorted(keys);
	
	if ((*ac)&&(*av)) {
		//memory passed in, use it
	} else {
        
		//otherwise allocate memory
		*ac = keys.size();
		if (!(*av = (AtomPtr)getbytes(sizeof(Atom)*(*ac)))) {
			*ac = 0;
			return MAX_ERR_OUT_OF_MEM;
		}
	}
	
	jamoma_ttvalue_to_Atom(keys, ac, av);
	
	return MAX_ERR_NONE;
}

t_max_err model_set_amenities(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av)
{
    WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTValue     keys;
    TTSymbol    key;
    
    EXTRA->attr_amenities->clear();
	
	if (ac&&av) {
        
		jamoma_ttvalue_from_Atom(keys, _sym_nothing, ac, av);
        
        for (TTUInt8 i = 0; i < keys.size(); i++) {
            
            key = keys[i];
            EXTRA->attr_amenities->append(key, kTTValNONE);
        }
    }
	else
		EXTRA->attr_amenities->append(TTSymbol("all"), kTTValNONE); // default all
	
	return MAX_ERR_NONE;
}

TTBoolean model_test_amenities(TTPtr self, TTSymbol name)
{
    WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTValue v;
    
    return !EXTRA->no_amenities && (EXTRA->all_amenities || !EXTRA->attr_amenities->lookup(name, v));
}
