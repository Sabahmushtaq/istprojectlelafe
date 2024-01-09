import 'package:flutter/cupertino.dart';
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
