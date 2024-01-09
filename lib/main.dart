

import 'dart:convert';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:istprojectlelafe/Models/PostModel.dart';
import 'package:istprojectlelafe/search.dart';
import 'package:istprojectlelafe/settings.dart';
import 'package:http/http.dart' as http;

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
                    PopupMenuButton(
                      itemBuilder: ( context)=>[
                        PopupMenuItem(child: Text("Settings"),value: "set",),
                        PopupMenuItem(child: Text("Login"),value: "login",),
                      ],onSelected: (String newValue){
                      if(newValue=="login"){

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
              Text("LOGIN TO HACKER NEWS"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(label: Text("USERNAME")),),
                  TextField(

                    obscureText: _obscured,
                    decoration: InputDecoration(label: Text("PASSWORD",),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscured = !_obscured;
                            // Prevents focus if tap on eye
                          });
                        },
                        icon: Icon(
                          _obscured ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                  Text(
                      "YOUR INFORMATION IS ONLY SAVED LOCALLY AND USED FOR API CALLS"),
                  OutlinedButton(
                      onPressed: () {}, child: Text("how does it work"))
                ],
              ),
              actions: [Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                OutlinedButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text("CANCEL")),
                OutlinedButton(onPressed: () {}, child: Row(

                  children: [
                    Text("save", style: TextStyle(),),
                    Icon(Icons.check)
                  ],
                )),
              ],)

              ],),
          ),
        );
      }),
    );

                            }
                            );
                      }
                      if(newValue=="set"){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()));
                      }
                    },
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
  }//
//
//

}
