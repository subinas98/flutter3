import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyButton(),
    )
  );
}

class MyButton extends StatefulWidget{
  @override 
  MyButtonState createState(){
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton>{
  int counter = 0;
  List<String> SpanishNumbers = [
    "Uno", "Dos", "Tres", "Cautro", "Cinco", "Seis", "Siete", "Ocho", "Nueve", "Dietz"
  ];
  String DefaultText = "Spanish Numbers";

  void displaynumbers(){
    setState(() {
      DefaultText = SpanishNumbers[counter];
      if (counter < 9) {
        counter++;
      } else {
        counter = 0;
      }
    });
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('My stateful app'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text(DefaultText, style: TextStyle(fontSize: 30.0)),
              Padding(padding: EdgeInsets.all(10.0),),
              MaterialButton(
                child: Text('Call numbers', style: TextStyle(color: Colors.white),),
                onPressed: displaynumbers,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}