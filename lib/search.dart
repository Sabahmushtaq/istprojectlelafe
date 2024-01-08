import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.all(20),
        child: Column(

          children: [
            TextField(autofocus: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.highlight_off)),


              ),
            ),
            SizedBox(height: 150,),
            Icon(Icons.search,size: 100,),
            Text("SEARCH FOR STORIES",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          ],
        ),
      ),


    );
  }

}