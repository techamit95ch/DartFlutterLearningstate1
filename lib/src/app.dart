import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'model/imageModel.dart';
import 'widgets/imageList.dart';

class App extends StatefulWidget{
  @override
   createState() {
    // TODO: implement createState
    return AppState();
  }  
  
}

class AppState extends State<App>{
  int counter =0;
  List <ImageModel> images=[];
  void fetchImage() async{
    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(BuildContext context){
    return MaterialApp(
     home: Scaffold(
       //body:Text('$counter'),
       body:ImageList(images),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         onPressed:fetchImage
         /* (){
           //print("Hi");
           setState(() {
             counter++;
           });
         }  */
         ),
       appBar: AppBar(
         title: const Text('My App'),
       ),
        backgroundColor: Colors.blueGrey.shade200,
     ),
     );
  }
}