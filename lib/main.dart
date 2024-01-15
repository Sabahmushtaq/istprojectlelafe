

import 'dart:convert';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:istprojectlelafe/Models/PostModel.dart';
import 'package:istprojectlelafe/search.dart';
import 'package:istprojectlelafe/settings.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

var defaultValue="TOP STORIES";


List <String>items=[
  "TOP STORIES",
  "LAST 24 HOURS","LAST 28 HOURS","LAST WEEK","NEW STORIES","BEST STORIES",
  "ASK HN","SHOW HN","HN JOBS","BOOKMARKS",

];
var Loggedin;
var namecontroller=TextEditingController();
var emailcontroller=TextEditingController();
List<PostModel> postList=[];
Future<List<PostModel>> getPostApi ()async{
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  var data=jsonDecode(response.body.toString());
  if(response.statusCode==200){
    for(Map i in data){
      postList.add(PostModel.fromJson(i));
    }
    return postList;
  }else{
    return postList;
  }
}




bool _obscured=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(

        child: Column(

          children: [
            Container(
              margin: EdgeInsets.only(top: 80),


              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
               DropdownButtonHideUnderline(
                 child: DropdownButton2(alignment: Alignment.center,hint:Text("$defaultValue",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),onChanged: (String? newValue){
                    setState(() {
                      defaultValue=newValue!;
                    });
                  },items: items.map<DropdownMenuItem<String>>((String itemValue){
                    return DropdownMenuItem(value: itemValue,child: Text(itemValue,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold
                    ),),);
                  }).toList(), ),
               ),
                SizedBox(width: 40,),
                 //   DropdownButtonHideUnderline(child: DropdownButton(isExpanded: true,hint))
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Search()));
                },
                    child: Icon(Icons.search)),


                    Container(
                      child: callhere(context),
                    )
                  ]),
            ),                          //in case of container and list ,wrap list with expanded
           /* ListView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap:true,itemBuilder: (context,index){
              return ListTile(
                leading: Text("${index+1}"),
                title: Text(""),
                subtitle: Row(children: [

                ],),
                trailing: Icon(Icons.message),
              );
            },
              itemCount: 50,
            )*/
            Container(
              child: FutureBuilder(future: getPostApi(), builder: (context,snapshot){
                if(!snapshot.hasData){
                  return Center(child: Text("LOADING" ,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),));
                }
                else{
                  return ListView.builder( physics:NeverScrollableScrollPhysics(),shrinkWrap:true,itemBuilder: (context,index){

                    return ListTile(
                    leading: Text(postList[index].userId.toString()),
                     title: Text(postList[index].title.toString()),
                    subtitle: Row(children: [

                      Text("lorem ipsum"),
                      Text("lorem ipsum"),
                      Text("lorem ipsum"),
                      ],),
                    trailing: Icon(Icons.message),
                  );
                  },
                  itemCount: postList.length,);
                }

              }),
            )
          ],
        ),
      )
    );

  }////preference
void preference() async{
  var sharedpref= await SharedPreferences.getInstance();
  sharedpref.setString("name",namecontroller.toString());

  sharedpref.setString("email",emailcontroller.toString());
  sharedpref.setBool("login",true);
  var getpref= await SharedPreferences.getInstance();
  print("hi");
  print("hello");
  namecontroller.clear();
  emailcontroller.clear();
  Loggedin=getpref.getBool("login");
  print("$Loggedin,same");
  if(Loggedin!=null){
    if(Loggedin==true){
    print("h3");
    Navigator.pop(context);

//    callhere(context);


     // Navigator.pop(context);
    }

  }

}
//void getpreference() async {}
createmenuitems(){
  return PopupMenuButton(


    itemBuilder: ( context)=>[
      PopupMenuItem(child: Text("Settings"), value: "set",),
      PopupMenuItem(child: Text("Login"), value: "login",)
    ],onSelected: (String newValue){
    if(newValue=="login"){

      showDialog(context: context,
          builder: (BuildContext context){




                    return StatefulBuilder(builder:(context,setStateSB) {
                      return Center(
                        child: SingleChildScrollView(

                          child: Container(
                            padding: EdgeInsets.all(8.0),

                            child: AlertDialog(
                              alignment: Alignment.center,
                              // insetPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 150),

                              // buttonPadding: EdgeInsets.zero, //contentPadding: EdgeInsets.zero, // Customize padding to reduce height
                              title:
                              Text("LOGIN TO HACKER NEWS"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  TextField(
                                    controller: namecontroller,
                                    decoration: InputDecoration(
                                        label: Text("USERNAME")),),
                                  TextField(
                                    controller: emailcontroller,
                                    obscureText: _obscured,
                                    decoration: InputDecoration(
                                      label: Text("PASSWORD",),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setStateSB(() {
                                            _obscured = !_obscured;
                                            // Prevents focus if tap on eye
                                          });
                                        },
                                        icon: Icon(
                                          _obscured ? Icons
                                              .visibility_off_rounded
                                              : Icons.visibility_rounded,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                      "YOUR INFORMATION IS ONLY SAVED LOCALLY AND USED FOR API CALLS"),
                                  OutlinedButton(
                                      onPressed: () {},
                                      child: Text("how does it work"))
                                ],
                              ),
                              actions: [Row(mainAxisAlignment: MainAxisAlignment
                                  .end, children: [
                                OutlinedButton(onPressed: () {
                                  Navigator.pop(context);
                                }, child: Text("CANCEL")),
                                OutlinedButton(onPressed: () {
                                  if (namecontroller.text.isNotEmpty &&
                                      emailcontroller.text.isNotEmpty) {
                                    preference();
                                    setState(() {

                                    });
                                    //getpreference();
                                    // callhere(context);
                                  }
                                }, child: Row(

                                  children: [
                                    Text("save", style: TextStyle(),),
                                    Icon(Icons.check)
                                  ],
                                )),
                              ],)

                              ],),
                          ),
                        ),
                      );
                    });



          }
      );
    }
    if(newValue=="set"){
      Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> settingspage()));
    }
  },
  );
}

  callhere(context)  {
    if(Loggedin==null||Loggedin==false){
    return createmenuitems();

    }
    else if(Loggedin==true){
      return PopupMenuButton(itemBuilder: (context)=>
         [ PopupMenuItem(child: Text("Logout"), value: "ret",),
          PopupMenuItem(child: Text("SUBMIT"), value: "login",),
           PopupMenuItem(child: Text("PROFILE"), value: "login",),
           PopupMenuItem(child: Text("SETTINGS"), value: "login",),

      ],onSelected: (String newvalue){
        if(newvalue=="ret"){
          Loggedin=false;
          setState((){});






        }
      },
      );
    }


  }


}
