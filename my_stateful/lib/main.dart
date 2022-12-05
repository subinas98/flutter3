import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyButton(),
    )
  );
}

class MyButton extends StatefulWidget{

}

class MyButtonState extends State<MyButton>{
  int counter = 0;
  List<String> SpanishNumbers = [
    "Uno", "Dos", "Tres", "Cautro", "Cinco", "Seis", "Siete", "Ocho", "Nueve", "Dietz"
  ];
  String DefaultText = "Spanish Numbers";
}