{
  "patcher": {
    "fileversion": 1,
    "rect": [
      0.0,
      44.0,
      1280.0,
      726.0
    ],
    "bglocked": 0,
    "defrect": [
      0.0,
      44.0,
      1280.0,
      726.0
    ],
    "openrect": [
      0.0,
      0.0,
      0.0,
      0.0
    ],
    "openinpresentation": 0,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 0,
    "gridsize": [
      5.0,
      5.0
    ],
    "gridsnaponopen": 0,
    "toolbarvisible": 1,
    "boxanimatetime": 200,
    "imprint": 0,
    "enablehscroll": 1,
    "enablevscroll": 1,
    "devicewidth": 0.0,
    "boxes": [
      {
        "box": {
          "comment": "",
          "id": "obj-6",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            912.0,
            158.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patcher": {
            "fileversion": 1,
            "rect": [
              25.0,
              69.0,
              640.0,
              480.0
            ],
            "bglocked": 0,
            "defrect": [
              25.0,
              69.0,
              640.0,
              480.0
            ],
            "openrect": [
              0.0,
              0.0,
              0.0,
              0.0
            ],
            "openinpresentation": 0,
            "default_fontsize": 12.0,
            "default_fontface": 0,
            "default_fontname": "Arial",
            "gridonopen": 0,
            "gridsize": [
              5.0,
              5.0
            ],
            "gridsnaponopen": 0,
            "toolbarvisible": 1,
            "boxanimatetime": 200,
            "imprint": 0,
            "enablehscroll": 1,
            "enablevscroll": 1,
            "devicewidth": 0.0,
            "boxes": [
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    51.0,
                    152.0,
                    49.0,
                    19.0
                  ],
                  "text": "zl join"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    100.0,
                    52.0,
                    19.0
                  ],
                  "text": "zl slice 2"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-18",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    80.0,
                    127.0,
                    322.0,
                    19.0
                  ],
                  "text": "j.dataspace @dataspace position @input xyz @output aed"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-23",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    40.0,
                    25.0,
                    25.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-24",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    51.0,
                    230.0,
                    25.0,
                    25.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-21",
                    1
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-18",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-20",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-21",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-24",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-20",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-23",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            709.0,
            99.0,
            69.0,
            19.0
          ],
          "saved_object_attributes": {
            "default_fontname": "Arial",
            "fontname": "Arial",
            "default_fontsize": 12.0,
            "globalpatchername": "",
            "fontface": 0,
            "fontsize": 12.0,
            "default_fontface": 0
          },
          "text": "p xyz->aed"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-32",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patcher": {
            "fileversion": 1,
            "rect": [
              25.0,
              69.0,
              640.0,
              480.0
            ],
            "bglocked": 0,
            "defrect": [
              25.0,
              69.0,
              640.0,
              480.0
            ],
            "openrect": [
              0.0,
              0.0,
              0.0,
              0.0
            ],
            "openinpresentation": 0,
            "default_fontsize": 12.0,
            "default_fontface": 0,
            "default_fontname": "Arial",
            "gridonopen": 0,
            "gridsize": [
              5.0,
              5.0
            ],
            "gridsnaponopen": 0,
            "toolbarvisible": 1,
            "boxanimatetime": 200,
            "imprint": 0,
            "enablehscroll": 1,
            "enablevscroll": 1,
            "devicewidth": 0.0,
            "boxes": [
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-15",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    474.0,
                    116.0,
                    115.0,
                    19.0
                  ],
                  "text": "j.oscroute /audio"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    124.0,
                    97.0,
                    129.0,
                    19.0
                  ],
                  "text": "j.oscroute /speaker"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    357.0,
                    97.0,
                    70.0,
                    19.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    262.0,
                    97.0,
                    70.0,
                    19.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-2",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    124.0,
                    353.0,
                    25.0,
                    25.0
                  ]
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-29",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    124.0,
                    306.0,
                    45.0,
                    19.0
                  ],
                  "text": "append"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-28",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    124.0,
                    243.0,
                    45.0,
                    19.0
                  ],
                  "text": "append"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-27",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    124.0,
                    75.0,
                    369.0,
                    19.0
                  ],
                  "text": "j.oscinstance"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-30",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    124.0,
                    15.0,
                    25.0,
                    25.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-31",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    474.0,
                    346.0,
                    25.0,
                    25.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-28",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-31",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-15",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-31",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-15",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-1",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-27",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-15",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-27",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-27",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-29",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-2",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-29",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-27",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-30",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-28",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-4",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            708.0,
            47.0,
            79.0,
            19.0
          ],
          "saved_object_attributes": {
            "default_fontname": "Arial",
            "fontname": "Arial",
            "default_fontsize": 12.0,
            "globalpatchername": "",
            "fontface": 0,
            "fontsize": 12.0,
            "default_fontface": 0
          },
          "text": "p oscinstance"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 32,
          "numoutlets": 2,
          "outlettype": [
            "audio.connect",
            ""
          ],
          "patching_rect": [
            220.0,
            601.0,
            437.5,
            19.0
          ],
          "text": "j.pack= 32",
          "varname": "multiin"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 33,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            ""
          ],
          "patching_rect": [
            220.0,
            95.0,
            451.0,
            19.0
          ],
          "text": "j.unpack= 32",
          "varname": "multiout"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1114.0,
            93.0,
            96.0,
            19.0
          ],
          "text": "prepend dspstate"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-4",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            136.0,
            9.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "int",
            "float",
            "int",
            "int"
          ],
          "patching_rect": [
            1114.0,
            74.0,
            59.0,
            19.0
          ],
          "text": "dspstate~"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 7,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            708.0,
            77.0,
            392.0,
            19.0
          ],
          "text": "j.pass /position /delay /numSpeakers /bypass /temperature /automatic"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-9",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            220.0,
            626.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-10",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            220.0,
            50.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            761.0,
            153.0,
            75.0,
            19.0
          ],
          "save": [
            "#N",
            "thispatcher",
            ";",
            "#Q",
            "end",
            ";"
          ],
          "text": "thispatcher"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-12",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            761.0,
            133.0,
            169.0,
            19.0
          ],
          "text": "js j.sur.speaker.delays.js",
          "varname": "javascript"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-1014",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            427.0,
            345.0,
            366.0,
            31.0
          ],
          "text": "j.parameter automatic @type boolean @description \"position based calculation (automatic) or manual setting of delays.\" @priority 2"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-1007",
          "linecount": 3,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            395.0,
            6.0,
            603.0,
            43.0
          ],
          "text": "j.parameter temperature @type decimal @repetitions/filter 1 @range/bounds -273. 40. @range/clipmode low @description \"temperature to calculate speed of sound.\" @dataspace temperature @dataspace/unit Celsius",
          "varname": "voices[1]"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-1002",
          "linecount": 3,
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            427.0,
            294.0,
            589.0,
            43.0
          ],
          "text": "j.parameter.array 32 speaker delay @type decimal @repetitions/filter 0 @value/default 0. @range/bounds 0. 1000. @range/clipmode both @dataspace time @dataspace/unit ms @description \"delay to be applied on the Nth speaker  in [ms] by default\""
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-1010",
          "linecount": 3,
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            427.0,
            248.0,
            567.0,
            43.0
          ],
          "text": "j.message.array 32 speaker position @type decimalArray @repetitions/filter 0 @dataspace position @dataspace/unit xyz @value/default 0. 0. 0. @description \"Position of the Nth speaker. In cartesian coordinates (xyz) by default \""
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-1001",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            72.0,
            172.0,
            46.0,
            19.0
          ],
          "text": "j.in"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-1018",
          "linecount": 3,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            427.0,
            190.0,
            466.0,
            43.0
          ],
          "text": "j.parameter numSpeakers @type integer @repetitions/filter 1 @range/bounds 2 32 @range/clipmode both @description \"The number of audio channels that the ambisonic signal is diffused to. Changes only take effect when audio is off.\" @priority 1",
          "varname": "voices"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "obj-9",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-2",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-11",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-12",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-6",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-12",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-12",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-12",
            0
          ],
          "hidden": 0,
          "midpoints": [
            1123.5,
            127.0,
            770.5,
            127.0
          ],
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-8",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-32",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-8",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-32",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "hidden": 0,
          "midpoints": [
            145.5,
            39.0,
            717.5,
            39.0
          ],
          "source": [
            "obj-4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-12",
            0
          ],
          "hidden": 0,
          "midpoints": [
            1028.333374,
            127.0,
            770.5,
            127.0
          ],
          "source": [
            "obj-8",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-12",
            0
          ],
          "hidden": 0,
          "midpoints": [
            966.166687,
            125.5,
            770.5,
            125.5
          ],
          "source": [
            "obj-8",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-12",
            0
          ],
          "hidden": 0,
          "midpoints": [
            904.0,
            125.223145,
            770.5,
            125.223145
          ],
          "source": [
            "obj-8",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-12",
            0
          ],
          "hidden": 0,
          "midpoints": [
            841.833313,
            122.0,
            770.5,
            122.0
          ],
          "source": [
            "obj-8",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-12",
            0
          ],
          "hidden": 0,
          "midpoints": [
            779.666687,
            121.5,
            770.5,
            121.5
          ],
          "source": [
            "obj-8",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-8",
            0
          ]
        }
      }
    ]
  }
}