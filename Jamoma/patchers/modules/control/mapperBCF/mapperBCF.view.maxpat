{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 127.0, 435.0, 491.0, 337.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"defrect" : [ 127.0, 435.0, 491.0, 337.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 321.0, 39.0, 32.5, 18.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 321.0, 18.0, 47.0, 18.0 ],
					"text" : "j.init"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 299.0, 63.0, 141.0, 16.0 ],
					"text" : "presentation_rect 0 0 150 70"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 837.0, 129.0, 482.0, 705.0 ],
						"bglocked" : 0,
						"defrect" : [ 837.0, 129.0, 482.0, 705.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 0,
						"enablevscroll" : 0,
						"devicewidth" : 0.0,
						"title" : "/mapperBCF(view).1",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"args" : [ "track.8", "#0_" ],
									"id" : "obj-11",
									"maxclass" : "bpatcher",
									"name" : "bcfTrack.view.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 461.375183, 175.0, 54.0, 607.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 423.943695, 76.0, 56.0, 621.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "track.7", "#0_" ],
									"id" : "obj-10",
									"maxclass" : "bpatcher",
									"name" : "bcfTrack.view.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 394.486603, 175.0, 54.0, 607.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 363.665985, 76.0, 56.0, 621.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "track.6", "#0_" ],
									"id" : "obj-9",
									"maxclass" : "bpatcher",
									"name" : "bcfTrack.view.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 327.598022, 175.0, 54.0, 607.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 303.388336, 76.0, 56.0, 621.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "track.5", "#0_" ],
									"id" : "obj-8",
									"maxclass" : "bpatcher",
									"name" : "bcfTrack.view.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 260.709442, 175.0, 54.0, 607.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 243.110672, 76.0, 56.0, 621.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "track.4", "#0_" ],
									"id" : "obj-7",
									"maxclass" : "bpatcher",
									"name" : "bcfTrack.view.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 193.820877, 175.0, 54.0, 607.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 182.832993, 76.0, 56.0, 621.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "track.3", "#0_" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "bcfTrack.view.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 126.932297, 175.0, 54.0, 607.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 122.555336, 76.0, 56.0, 621.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "track.2", "#0_" ],
									"id" : "obj-5",
									"maxclass" : "bpatcher",
									"name" : "bcfTrack.view.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.043724, 175.0, 54.0, 607.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 62.277668, 76.0, 56.0, 621.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 430.0, 39.0, 59.0, 18.0 ],
									"text" : "r #0_edit"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "track.1", "#0_" ],
									"id" : "obj-3",
									"maxclass" : "bpatcher",
									"name" : "bcfTrack.view.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 5.0, 175.0, 54.0, 607.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 76.0, 56.0, 621.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "#1" ],
									"id" : "obj-4",
									"maxclass" : "bpatcher",
									"name" : "bcfMapper.view.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.0, 70.0, 480.0, 81.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 3.0, 478.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 15.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 134.0, 80.0, 100.0, 18.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}
,
					"text" : "p BCF2000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 46.0, 65.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 45.0, 35.0, 19.0 ],
					"text" : "out:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 24.0, 65.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 23.0, 28.0, 19.0 ],
					"text" : "in:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-23",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 34.0, 113.0, 100.0, 31.0 ],
					"text" : "j.view",
					"varname" : "j.model"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-24",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 34.0, 88.0, 21.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-25",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 149.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 151.0, 115.0, 54.0, 19.0 ],
					"text" : "j.init"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 151.0, 139.0, 54.0, 19.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"items" : [ "BCF2000 Port 1", ",", "BCF2000 Port 2", ",", "Fireface (655) Port 1", ",", "Fireface (655) Port 2", ",", "to MaxMSP 1", ",", "to MaxMSP 2" ],
					"labelclick" : 1,
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 122.0, 210.0, 100.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 22.574997, 119.0, 19.0 ],
					"types" : [  ],
					"varname" : "MIDIIN"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"items" : [ "AU DLS Synth 1", ",", "BCF2000 Port 1", ",", "BCF2000 Port 2", ",", "BCF2000 Port 3", ",", "Fireface (655) Port 1", ",", "Fireface (655) Port 2", ",", "from MaxMSP 1", ",", "from MaxMSP 2" ],
					"labelclick" : 1,
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 239.0, 204.0, 100.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 43.574997, 119.0, 19.0 ],
					"types" : [  ],
					"varname" : "MIDIOUT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 121.0, 185.0, 49.0, 19.0 ],
					"text" : "midiinfo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 239.0, 179.0, 49.0, 19.0 ],
					"text" : "midiinfo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 240.0, 235.0, 109.0, 19.0 ],
					"text" : "j.remote midiOut"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 122.0, 243.0, 101.0, 19.0 ],
					"text" : "j.remote midiIn"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-22",
					"maxclass" : "j.ui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 3.0, 1.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 131.5, 265.0, 107.0, 265.0, 107.0, 206.0, 131.5, 206.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 260.0, 236.0, 260.0, 236.0, 201.0, 248.5, 201.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 160.5, 163.5, 160.5, 163.5 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 160.5, 168.0, 248.5, 168.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-9", 1 ]
				}

			}
 ]
	}

}
