import 'package:flutter/material.dart';

class App extends StatefulWidget{
  @override
   createState() {
    // TODO: implement createState
    return AppState();
  }  
  
}

class AppState extends State<App>{
  int counter =0;

  Widget build(BuildContext context){
    return MaterialApp(
     home: Scaffold(
       body:Text('$counter'),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         onPressed:(){
           //print("Hi");
           setState(() {
             counter++;
           });
         } 
         ),
       appBar: AppBar(
         title: const Text('My App'),
       ),
        backgroundColor: Colors.blueGrey.shade200,
     ),
     );
  }
}