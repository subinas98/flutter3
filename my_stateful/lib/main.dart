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

  int Scounter = 0;
  List<String> SpanishNumbers = [
    "Uno", "Dos", "Tres", "Cautro", "Cinco", "Seis", "Siete", "Ocho", "Nueve", "Dietz"
  ];
  String DefaultspanishText = "Spanish Numbers";
  
  int Ecounter = 0;
  List<String> EnglishNumbers =[
   "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"
  ];
  String DefaultenglishText = "English Numbers";

  void displaynumbers(){
    setState(() {
      DefaultspanishText = SpanishNumbers[Scounter];
      if (Scounter < 9) {
        Scounter++;
      } else {
        Scounter = 0;
      }
    });
    setState(() {
      DefaultenglishText = EnglishNumbers[Ecounter];
      if (Ecounter < 9) {
        Ecounter++;
      } else {
        Ecounter = 0;
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

              Text(DefaultspanishText, style: TextStyle(fontSize: 30.0)),
              Padding(padding: EdgeInsets.all(10.0),),

              Text(DefaultenglishText, style: TextStyle(fontSize: 30.0)),
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
      floatingActionButton: FloatingActionButton(
        onPressed: displaynumbers,
        child: const Icon(Icons.add),
      ),
    );
  }
}