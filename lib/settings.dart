/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget
{
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final toggle_button_status=[true,false,false];
  var isttitle=["THEME","SPECIAL NIGHTTIME THEME","TIMED RANGE","NIGHTTIME THEME"];

  var istleading=[Icons.fiber_manual_record_rounded,(Icons.nightlight),Icons.access_time_outlined,Icons.mode_night_rounded,];

  var istsubtitle=["MATERIAL YOU(auto)","","9.00-6.00","DARK"];

  bool _isswitch=false;
  late int selectedradiotile=1;





  @override
  Widget build(BuildContext context) {
    List<bool> isttrailing=[false,true,false,false];
    List sele=["1","2","3","4"];
   return Scaffold(
     body:SingleChildScrollView(
       child: Column(
         children:[ ListView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap:true,itemBuilder: (context,index) {
           return ListTile(
              onTap: (){

                if(isttrailing[index]==false&& sele[index]=="1")
               {
                 showDialog(context: context,
                     builder: (BuildContext context){



                       return Center(
                         child: StatefulBuilder(
                             builder: (context, setState)
                             {
                               return SingleChildScrollView(

                                 child: Container(
                                   padding: EdgeInsets.all(8.0),

                                   child: AlertDialog(
                                     // insetPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 150),

                                     // buttonPadding: EdgeInsets.zero, //contentPadding: EdgeInsets.zero, // Customize padding to reduce height
                                     title:
                                     Text("Theme"),
                                     content: Column(
                                       children: [
                                         RadioListTile(value: 1, groupValue: selectedradiotile, title: Text("MATERIAL YOU(AUTO)"),onChanged: (val){
                                                                    setState((){
                                                                      selectedradiotile=val!;
                                                                    });
                                         }),

                                         RadioListTile(value: 2, groupValue: selectedradiotile, title: Text("DARK"),onChanged: (val){
                                           setState((){
                                             selectedradiotile=val!;
                                           });
                                         }),
                                         RadioListTile(value: 3, groupValue: selectedradiotile,title: Text("MATERIAL YOU(DARK)"), onChanged: (val){
                                           setState((){
                                             selectedradiotile=val!;
                                           });
                                         }),
                                         RadioListTile(value: 4, groupValue: selectedradiotile, title: Text("GRAY"),onChanged: (val){
                                           setState((){
                                             selectedradiotile=val!;
                                           });
                                         }),
                                         RadioListTile(value: 5, groupValue: selectedradiotile, title: Text("BLACK"),onChanged: (val){
                                           setState((){
                                             selectedradiotile=val!;
                                           });
                                         }),
                                         RadioListTile(value: 6, groupValue: selectedradiotile,title: Text("LIGHT"), onChanged: (val){
                                           setState((){
                                             selectedradiotile=val!;
                                           });
                                         }),
                                         RadioListTile(value: 7, groupValue: selectedradiotile,title: Text("MATERIAL YOU(LIGHT)"), onChanged: (val){
                                           setState((){
                                             selectedradiotile=val!;
                                           });
                                         }),
                                       ],
                                     ),
                                     actions: [
                                       OutlinedButton(onPressed: () {
                                         Navigator.pop(context);
                                       }, child: Text("CANCEL")),



                                     ],),
                                 ),
                               );
                             }),
                       );

                     }
                 );
               }
                else if(isttrailing[index]==false&& sele[index]=="3"){
                 _showTimePicker();
                }
                else if(isttrailing[index]==false&& sele[index]=="4"){
                  {
                    showDialog(context: context,
                        builder: (BuildContext context){



                          return Center(
                            child: StatefulBuilder(
                                builder: (context, setState)
                                {
                                  return SingleChildScrollView(

                                    child: Container(
                                      padding: EdgeInsets.all(8.0),

                                      child: AlertDialog(
                                        // insetPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 150),

                                        // buttonPadding: EdgeInsets.zero, //contentPadding: EdgeInsets.zero, // Customize padding to reduce height
                                        title:
                                        Text("Theme"),
                                        content: Column(
                                          children: [
                                            RadioListTile(value: 1, groupValue: selectedradiotile, title: Text("MATERIAL YOU(AUTO)"),onChanged: (val){
                                              setState((){
                                                selectedradiotile=val!;
                                              });
                                            }),

                                            RadioListTile(value: 2, groupValue: selectedradiotile, title: Text("DARK"),onChanged: (val){
                                              setState((){
                                                selectedradiotile=val!;
                                              });
                                            }),
                                            RadioListTile(value: 3, groupValue: selectedradiotile,title: Text("MATERIAL YOU(DARK)"), onChanged: (val){
                                              setState((){
                                                selectedradiotile=val!;
                                              });
                                            }),
                                            RadioListTile(value: 4, groupValue: selectedradiotile, title: Text("GRAY"),onChanged: (val){
                                              setState((){
                                                selectedradiotile=val!;
                                              });
                                            }),
                                            RadioListTile(value: 5, groupValue: selectedradiotile, title: Text("BLACK"),onChanged: (val){
                                              setState((){
                                                selectedradiotile=val!;
                                              });
                                            }),

                                          ],
                                        ),
                                        actions: [
                                          OutlinedButton(onPressed: () {
                                            Navigator.pop(context);
                                          }, child: Text("CANCEL")),



                                        ],),
                                    ),
                                  );
                                }),
                          );

                        }
                    );
                  }
                }
                else if(isttrailing[index]==true)
                  {
                    _isswitch=!_isswitch;
                   setState(() {

                    });
                  }


              },
             leading: Icon(istleading[index]),
             title: Text(isttitle[index]),
             subtitle: Text(istsubtitle[index]),
             trailing:Visibility(visible: isttrailing[index],child: Switch(value: _isswitch,onChanged: (value){
               _isswitch=value;
       
               setState(() {
       
               });
       
             })),
           );
         },itemCount: isttitle.length,),





       ]),
     ) ,
   );

  }
  Future _showTimePicker()async{
    TimeOfDay? timepicked=await showTimePicker(context: context, initialTime: TimeOfDay.now(),initialEntryMode: TimePickerEntryMode.dial);
    if(timepicked!=null){
      print("date selected :${timepicked.hour}-${timepicked.minute}");
    }
}}
*/
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_flutter/icons_flutter.dart';
class settingspage extends StatefulWidget{
  @override
  State <settingspage> createState()=> _searchpagestate();}
List<bool>isswitched=List.generate(32, (index) => false);
class _searchpagestate extends State<settingspage> {
  TimeOfDay? pickedTime;
  var selectedRadio='Material You(auto)';
  var selectedRadio1='Material You(auto)';
  var selectedRadio2='Top stories';
  var selectedRadio3='Google';
  var selectedRadio4='Never';
  var selectedRadio5='Product sans (default)';
  var selectedRadio6='Always';
  var selectedRadio7='Smaller (13 sp)';
  var selectedRadio8='Default';
  String enteredtext='';
  TextEditingController filterstories=TextEditingController();

  //TimeOfDay? pickedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.only(top:20),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('Theme'),
    ListTile(
    leading:Icon(FontAwesomeIcons.themeco),
    title: Text('Theme'),
    subtitle: Text('$selectedRadio'),
    onTap: (){
    showDialog(
    context:context,
    builder:(BuildContext context){
    return SimpleDialog(insetPadding:EdgeInsets.only(bottom: 150,top:150),
    title: Text('Theme'),
    contentPadding: EdgeInsets.only(left: 4),
    children: [
    RadioListTile(
    title:Text('Material You(auto)'),
    value: 'Material You(auto)',
    groupValue: selectedRadio,
    onChanged: (value) {
    setState(() {
    selectedRadio = value!;
    Navigator.of(context).pop();
    });}
    ),RadioListTile(
    title:Text('Dark'),
    value: 'Dark',
    groupValue: selectedRadio,
    onChanged: (value){
    setState(() {
    selectedRadio=value!;
    Navigator.of(context).pop();
    });}
    ),
    RadioListTile(
    title: Text('Material You(dark)'),
    value:'Material You(dark)',
    groupValue: selectedRadio,
    onChanged: (value){
    setState(() {
    selectedRadio=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Gray'),
    value:'Gray',
    groupValue: selectedRadio,
    onChanged: (value){
    setState(() {
    selectedRadio=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Black'),
    value:'Black',
    groupValue: selectedRadio,
    onChanged: (value){
    setState(() {
    selectedRadio=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Light'),
    value:'Light',
    groupValue: selectedRadio,
    onChanged: (value){
    setState(() {
    selectedRadio=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Material You(light)'),
    value:'Material You(light)',
    groupValue: selectedRadio,
    onChanged: (value){
    setState(() {
    selectedRadio=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('White'),
    value:'White',
    groupValue: selectedRadio,
    onChanged: (value){
    setState(() {
    selectedRadio=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    Container(padding:EdgeInsets.only(left:200),
    child: TextButton(onPressed: (){Navigator.of(context).pop();}, child:Text('Cancel')))

    ],
    );
    });
    }

    ),
    ListTile(
    leading:Icon(Icons.dark_mode_sharp),
    title: Text('special nightime theme                   '),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[1],
    onChanged: (newvalue){setState(() {
    isswitched[1]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.access_time_rounded),
    title: Text('Time Range'),
    subtitle: Text(pickedTime == null ? "Select Time" : pickedTime!.format(context).toString()
    ),
    onTap: () async {
    TimeOfDay? time=await showTimePicker(context: context,
    initialTime: TimeOfDay.now(),
    initialEntryMode:TimePickerEntryMode.dial
    );
    if (time != null){
    setState(() {
    pickedTime = time;
    });
    }
    },


    ),
    ListTile(
    leading:Icon(Icons.ac_unit_sharp),
    title: Text(' Nighttime Theme'),
    subtitle: Text('$selectedRadio1'),
    onTap: (){showDialog(
    context:context,
    builder:(BuildContext context){
    return SimpleDialog(
    title: Text('Theme'),
    contentPadding: EdgeInsets.only(left: 4),
    children: [
    RadioListTile(
    title:Text('Material You(auto)'),
    value: 'Material You(auto)',
    groupValue: selectedRadio1,
    onChanged: (value) {
    setState(() {
    selectedRadio1 = value!;
    Navigator.of(context).pop();
    });}
    ),RadioListTile(
    title:Text('Dark'),
    value: 'Dark',
    groupValue: selectedRadio1,
    onChanged: (value){
    setState(() {
    selectedRadio1=value!;
    Navigator.of(context).pop();
    });}
    ),
    RadioListTile(
    title: Text('Material You(dark)'),
    value:'Material You(dark)',
    groupValue: selectedRadio1,
    onChanged: (value){
    setState(() {
    selectedRadio1=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Gray'),
    value:'Gray',
    groupValue: selectedRadio1,
    onChanged: (value){
    setState(() {
    selectedRadio1=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Black'),
    value:'Black',
    groupValue: selectedRadio1,
    onChanged: (value){
    setState(() {
    selectedRadio1=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Light'),
    value:'Light',
    groupValue: selectedRadio1,
    onChanged: (value){
    setState(() {
    selectedRadio1=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Material You(light)'),
    value:'Material You(light)',
    groupValue: selectedRadio1,
    onChanged: (value){
    setState(() {
    selectedRadio1=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('White'),
    value:'White',
    groupValue: selectedRadio1,
    onChanged: (value){
    setState(() {
    selectedRadio1=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    Container(padding:EdgeInsets.only(left:200),
    child: TextButton(onPressed: (){Navigator.of(context).pop();}, child:Text('Cancel')))

    ],
    );
    }
    );}

    ),
    Text('      Display'),
    ListTile(
    leading:Icon(Icons.drafts),
    title: Text(' Default starting page'),
    subtitle: Text('$selectedRadio2'),
    onTap:(){showDialog(
    context:context,
    builder:(BuildContext context){return
    SimpleDialog(
    title: Text('Default Starting Page'),
    insetPadding:EdgeInsets.only(bottom: 100,top: 100),
    children: [
    RadioListTile(
    title: Text('Top Stories'),
    groupValue: selectedRadio2,
    value:'Top Stories',
    onChanged: (value){
    setState(() {
    selectedRadio2=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Last 24 hours'),
    groupValue: selectedRadio2,
    value:'Last 24 hours',
    onChanged: (value){
    setState(() {
    selectedRadio2=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Last 48 hours'),
    groupValue: selectedRadio2,
    value:'Last 48 hours',
    onChanged: (value){
    setState(() {
    selectedRadio2=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Last week'),
    groupValue: selectedRadio2,
    value:'Last week',
    onChanged: (value){
    setState(() {
    selectedRadio2=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('New Stories'),
    groupValue: selectedRadio2,
    value:'New Stories',
    onChanged: (value){
    setState(() {
    selectedRadio2=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Best Stories'),
    groupValue: selectedRadio2,
    value:'Best Stories',
    onChanged: (value){
    setState(() {
    selectedRadio2=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Ask HN'),
    groupValue: selectedRadio2,
    value:'Ask HN',
    onChanged: (value){
    setState(() {
    selectedRadio2=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Show HN'),
    groupValue: selectedRadio2,
    value:'Show HN',
    onChanged: (value){
    setState(() {
    selectedRadio2=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('HN Jobs'),
    groupValue: selectedRadio2,
    value:'HN Jobs',
    onChanged: (value){
    setState(() {

    selectedRadio2=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    RadioListTile(
    title: Text('Bookmarks'),
    groupValue: selectedRadio2,
    value:'Bookmarks',
    onChanged: (value){
    setState(() {
    selectedRadio2=value!;
    Navigator.of(context).pop();
    });
    },
    ),
    Container(padding:EdgeInsets.only(left:200),
    child: TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Cancel')))

    ],);
    }
    );
    }
    ),
    ListTile(
    leading:Icon(Icons.square),
    title: Text(' compact stories'),
    subtitle: Text('Hides points ,domain and time'),
    trailing: Switch.adaptive(
    value: isswitched[2],
    onChanged: (newvalue){setState(() {
    isswitched[2]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.network_cell),
    title: Text('show story thumbnails'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[3],
    onChanged: (newvalue){setState(() {
    isswitched[3]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.thumb_down),
    title: Text('show story points'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[4],
    onChanged: (newvalue){setState(() {
    isswitched[4]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.keyboard_option_key),
    title: Text('show story indices'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[5],
    onChanged: (newvalue){setState(() {
    isswitched[5]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.accessibility),
    title: Text('Compact header'),
    subtitle: Text(" smaller margins for 'top stories' header") ,
    trailing: Switch.adaptive(
    value: isswitched[6],
    onChanged: (newvalue){setState(() {
    isswitched[6]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.handshake_outlined),
    title: Text('Left align comments button'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[7],
    onChanged: (newvalue){setState(() {
    isswitched[7]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.tab_outlined),
    title: Text('Enable foldable support'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[8],
    onChanged: (newvalue){setState(() {
    isswitched[8]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.remove_red_eye),
    title: Text('Transparent status bar'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[9],onChanged: (newvalue){setState(() {
    isswitched[9]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Foundation.web),
    title: Text('Favicon provider'),
    subtitle: Text('$selectedRadio3'),
    onTap:(){showDialog(
    context:context,
    builder:(BuildContext context){return
    SimpleDialog(title: Text('Favicon Provider'),
    children: [
    RadioListTile(title:
    Text('Google'),
    value:'Google' ,
    groupValue: selectedRadio3,
    onChanged: (value){
    setState(() {
    selectedRadio3=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('DuckDuckGo'),
    value:'DuckDuckGo' ,
    groupValue: selectedRadio3,
    onChanged: (value){
    setState(() {
    selectedRadio3=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Favicon Kit'),
    value:'Favicon Kit' ,
    groupValue: selectedRadio3,
    onChanged: (value){
    setState(() {
    selectedRadio3=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    Container(padding:EdgeInsets.only(left:200),
    child: TextButton(onPressed: (){Navigator.of(context).pop();},child: Text('Cancel')))

    ] );
    }
    );
    }
    ),
    ListTile(
    leading:Icon(Elusive.fire),
    title: Text('Highlight hot stories'),
    subtitle: Text('$selectedRadio4'),
    onTap:(){showDialog(
    context:context,
    builder:(BuildContext context){return
    SimpleDialog(
    title: Text('Highlight Hot Stories'),
    children: [
    RadioListTile(title:
    Text('Never'),
    value:'Never' ,
    groupValue: selectedRadio4,
    onChanged: (value){
    setState(() {
    selectedRadio4=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Points + comments>100'),
    value:'Points + comments>100' ,
    groupValue: selectedRadio4,
    onChanged: (value){
    setState(() {
    selectedRadio4=value!;
    Navigator.of(context).pop();
    });}
    ),
    RadioListTile(title:
    Text('Points + comments>200'),
    value:'Points + comments>200' ,
    groupValue: selectedRadio4,
    onChanged: (value){
    setState(() {
    selectedRadio4=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Points + comments>300'),
    value:'Points + comments>300' ,
    groupValue: selectedRadio4,
    onChanged: (value){
    setState(() {
    selectedRadio4=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Points + comments>400'),
    value:'Points + comments>400' ,
    groupValue: selectedRadio4,
    onChanged: (value){
    setState(() {
    selectedRadio4=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    Container(padding:EdgeInsets.only(left:200),
    child: TextButton(onPressed: (){Navigator.of(context).pop();},child: Text('Cancel')))

    ] );
    }
    );
    }
    ),
    ListTile(
    leading:Icon(Icons.abc),
    title: Text('Title and comment font'),
    subtitle: Text('Product sans(default'),
    onTap:(){showDialog(
    context:context,
    builder:(BuildContext context){return
    SimpleDialog(
    title: Text('Title and comment font'),
    children: [
    RadioListTile(title:
    Text('Product sans (default)'),
    value:'Product sans (default)' ,
    groupValue: selectedRadio5,
    onChanged: (value){
    setState(() {
    selectedRadio5=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Device default'),
    value:'Device default' ,
    groupValue: selectedRadio5,
    onChanged: (value){
    setState(() {
    selectedRadio5=value!;
    Navigator.of(context).pop();
    });
    }
    ),
    RadioListTile(title:
    Text('Verdana (sans serif)'),
    value:'Verdana (sans serif)' ,
    groupValue: selectedRadio5,
    onChanged: (value){
    setState(() {
    selectedRadio5=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('JetBrains Mono (monospace)'),
    value:'JetBrains Mono(monospace)' ,
    groupValue: selectedRadio5,
    onChanged: (value){
    setState(() {
    selectedRadio5=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Georgia (serif)'),
    value:'Georgia (serif)' ,
    groupValue: selectedRadio5,
    onChanged: (value){
    setState(() {
    selectedRadio5=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Roboto slab (serif)'),
    value:'Roboto slab (serif)' ,
    groupValue: selectedRadio5,
    onChanged: (value){
    setState(() {
    selectedRadio5=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    Container(padding:EdgeInsets.only(left:200),
    child: TextButton(onPressed: (){Navigator.of(context).pop();},child: Text('Cancel')))

    ] );
    }
    );
    }
    ),
    Text('webView'),
    ListTile(
    leading:Icon(Icons.web),
    title: Text('Integrated WebView'),
    subtitle: Text('opens websites in the app which has a hit on performance'),
    trailing: Switch.adaptive(
    value: isswitched[10],
    onChanged: (newvalue){setState(() {
    isswitched[10]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.front_loader),
    title: Text('Preload websites'),
    subtitle: Text('never'),
    onTap:(){showDialog(
    context:context,
    builder:(BuildContext context){return
    SimpleDialog(title: Text('Preload Websites'),
    children: [
    RadioListTile(title:
    Text('Always'),
    value:'Always' ,
    groupValue: selectedRadio6,
    onChanged: (value){
    setState(() {
    selectedRadio6=value!;
    Navigator.of(context).pop();
    });
    }
    ),
    RadioListTile(title:
    Text('Only on WiFi'),
    value:'Only on WiFi' ,
    groupValue: selectedRadio6,
    onChanged: (value){
    setState(() {
    selectedRadio6=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Never'),
    value:'Never' ,
    groupValue: selectedRadio6,
    onChanged: (value){
    setState(() {
    selectedRadio6=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    Container(padding:EdgeInsets.only(left:200),
    child: TextButton(onPressed: (){Navigator.of(context).pop();},child: Text('Cancel')))

    ] );
    }
    );
    }
    ),
    ListTile(
    leading:Icon(Icons.water_outlined),
    title: Text('Match WebView dark mode to theme'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[11],
    onChanged: (newvalue){setState(() {
    isswitched[11]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.block),
    title: Text('Block WebView adse'),
    subtitle: Text('May cause some sites to stop working and has a small '
    'performance penalty'),
    trailing: Switch.adaptive(
    value: isswitched[12],
    onChanged: (newvalue){setState(() {
    isswitched[12]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.arrow_back),
    title: Text('Redirect Twitter /X to Nitter'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[13],
    onChanged: (newvalue){setState(() {
    isswitched[13]=newvalue;
    });
    },
    ),
    ),
    Text('Comments'),
    ListTile(
    leading:Icon(Icons.text_increase),
    title: Text('Comments text size'),
    subtitle: Text('standard (15sp'),
    onTap:(){showDialog(
    context:context,
    builder:(BuildContext context){return
    SimpleDialog(
    title: Text('Comments text size'),
    children: [
    RadioListTile(title:
    Text('Smaller (13 sp)'),
    value:'Smaller (13 sp)' ,
    groupValue: selectedRadio7,
    onChanged: (value){
    setState(() {
    selectedRadio7=value!;
    Navigator.of(context).pop();
    });
    }
    ),
    RadioListTile(title:
    Text('Small (14 sp)'),
    value:'Small (14 sp)' ,
    groupValue: selectedRadio7,
    onChanged: (value){
    setState(() {
    selectedRadio7=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Standard (15 sp)'),
    value:'Standard (15 sp)' ,
    groupValue: selectedRadio7,
    onChanged: (value){
    setState(() {
    selectedRadio7=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Large (16 sp)'),
    value:'Large (16 sp)' ,
    groupValue: selectedRadio7,
    onChanged: (value){
    setState(() {
    selectedRadio7=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Larger (17 sp)'),
    value:'Larger (17 sp)' ,
    groupValue: selectedRadio7,
    onChanged: (value){
    setState(() {
    selectedRadio7=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Largest (18 sp)'),
    value:'Largest (18 sp)' ,
    groupValue: selectedRadio7,
    onChanged: (value){
    setState(() {
    selectedRadio7=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    Container(padding:EdgeInsets.only(left:200),
    child: TextButton(onPressed: (){Navigator.of(context).pop();},child: Text('Cancel')))

    ] );
    }
    );
    }

    ),
    ListTile(
    leading:Icon(Icons.comment),
    title: Text('Comment sorting'),
    subtitle: Text('Default'),
    onTap:(){showDialog(
    context:context,
    builder:(BuildContext context){return
    SimpleDialog(title: Text('Comment Sortingr'),
    children: [
    RadioListTile(title:
    Text('Default'),
    value:'Default' ,
    groupValue: selectedRadio8,
    onChanged: (value){
    setState(() {
    selectedRadio8=value!;
    Navigator.of(context).pop();
    });}
    ),
    RadioListTile(title:
    Text('Mewest First'),
    value:'Mewest First' ,
    groupValue: selectedRadio8,
    onChanged: (value){
    setState(() {
    selectedRadio8=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Oldest First'),
    value:'Oldest First' ,
    groupValue: selectedRadio8,
    onChanged: (value){
    setState(() {
    selectedRadio8=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    RadioListTile(title:
    Text('Reply count'),
    value:'Reply count' ,
    groupValue: selectedRadio8,
    onChanged: (value){
    setState(() {
    selectedRadio8=value!;
    Navigator.of(context).pop();
    });

    }
    ),
    Container(padding:EdgeInsets.only(left:200),
    child: TextButton(onPressed: (){Navigator.of(context).pop();},child: Text('Cancel')))

    ] );
    }
    );
    }
    ),
    ListTile(
    leading:Icon(Icons.message),
    title: Text('Hide text of callapsed comments'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[15],
    onChanged: (newvalue){setState(() {
    isswitched[15]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.exposure_minus_2),
    title: Text('Auto-collapse top level comments'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[16],
    onChanged: (newvalue){setState(() {
    isswitched[16]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.water_outlined),
    title: Text('Show navigation buttons'),
    subtitle: Text('navigate between top level comments'),
    trailing: Switch.adaptive(
    value: isswitched[17],
    onChanged: (newvalue){setState(() {
    isswitched[17]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.format_paint),
    title: Text('Monochrome thread indicators'),
    subtitle: Text('Gray lines next to child comments'),
    trailing: Switch.adaptive(
    value: isswitched[18],
    onChanged: (newvalue){setState(() {
    isswitched[18]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.drag_indicator),
    title: Text('Show top level thread indicators'),
    subtitle: Text('Makes it easier to separate top level comments'),
    trailing: Switch.adaptive(
    value: isswitched[19],
    onChanged: (newvalue){setState(() {
    isswitched[19]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.comment_rounded),
    title: Text('Always open comments'),
    subtitle: Text('Clicking a story takes you directly to the comments view'),
    trailing: Switch.adaptive(
    value: isswitched[20],
    onChanged: (newvalue){setState(() {
    isswitched[20]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.swipe),
    title: Text('Disable swipe back from comments'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[21],
    onChanged: (newvalue){setState(() {
    isswitched[21]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.circle_rounded),
    title: Text('Animate comments'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[22],
    onChanged: (newvalue){setState(() {
    isswitched[22]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(Icons.swipe_down_alt_outlined),
    title: Text('Scrollbar'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[23],
    onChanged: (newvalue){setState(() {
    isswitched[23]=newvalue;
    });
    },
    ),
    ),
    Text('Link previews'),
    ListTile(
    leading:Icon(Icons.pin_end),
    title: Text('ArXiV'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[24],
    onChanged: (newvalue){setState(() {
    isswitched[24]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(AntDesign.github),
    title: Text('GitHub'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[25],
    onChanged: (newvalue){setState(() {
    isswitched[25]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(AntDesign.twitter),
    title: Text('twitter/X'),
    subtitle: Text('Requiress Nitter redirect to be active'),
    trailing: Switch.adaptive(
    value: isswitched[26],
    onChanged: (newvalue){setState(() {
    isswitched[26]=newvalue;
    });
    },
    ),
    ),
    ListTile(
    leading:Icon(FlutterIcons.wikipedia_mco),
    title: Text('Wikipedia'),
    subtitle: Text(''),
    trailing: Switch.adaptive(
    value: isswitched[27],
    onChanged: (newvalue){setState(() {
    isswitched[27]=newvalue;
    });
    },
    ),
    ),
    Text('General'),
    ListTile(
    leading:Icon(AntDesign.upload),
    title: Text('Use external browser'),
    subtitle: Text('in place of custom tabs'),
    trailing: Switch.adaptive(value: isswitched[28],
      onChanged: (newvalue){setState(() {
        isswitched[28]=newvalue;
      });
      },
    ),
    ),
      ListTile(
          leading:Icon(AntDesign.filter),
          title: Text('Filter stories'),
          subtitle: Text(''),
          onTap: (){
            filterstories.text=enteredtext;
            showDialog(context: context,
              builder: (BuildContext context){
                return AlertDialog(
                    insetPadding: EdgeInsets.only(bottom: 100,top: 100,right: 50,left: 50),
                    title: Text('Filter stories'),
                    content: Column(
                        children: [
                          Text('Seperate phrases by commas,capitalization is ignored'),
                          TextField(
                            controller: filterstories,
                          ),
                          Row(
                            children: [
                              TextButton(child: Text('cancel'),
                                onPressed:(){Navigator.pop(context);
                                },
                              ),

                              TextButton(onPressed: (){
                                setState(() {
                                  enteredtext = filterstories.text;
                                  Navigator.pop(context);
                                });}, child: Text('OK'))

                            ],)])
                );
              },
            );
          }
      ),
      ListTile(
        leading:Icon(Icons.hide_image),
        title: Text('Hide job posts'),
        subtitle: Text(''),
        trailing: Switch.adaptive(
          value: isswitched[29],
          onChanged: (newvalue){setState(() {
            isswitched[29]=newvalue;
          });
          },
        ),
      ),
      ListTile(
        leading:Icon(Icons.hide_source),
        title: Text('Hide Clicked Posts'),
        subtitle: Text(''),
        trailing: Switch.adaptive(
          value: isswitched[30],
          onChanged: (newvalue){setState(() {
            isswitched[30]=newvalue;
          });
          },
        ),
      ),
      ListTile(
        leading:Icon(Entypo.bookmark),
        title: Text('Export Bookmarks'),
        subtitle: Text('Exports to text file where first number of each line is post ID'),

      ),
      ListTile(
        leading:Icon(FlutterIcons.bookmarks_ent),
        title: Text('Import Bokkmarks'),
        subtitle: Text('overwrites current bookmarks'),
      ),
      ListTile(
        leading:Icon(Entypo.cross),
        title: Text('Clear clicked stories'),
        subtitle: Text(''),

      ),
      ListTile(
        leading:Icon(Elusive.github),
        title: Text('GitHub'),
        subtitle: Text(''),

      ),
      ListTile(
        leading:Icon(AntDesign.info),
        title: Text('About'),
        subtitle: Text('Version 2.0.1'),

      ),




    ],
    ),
        ),
        )
    );
  }

}
