import 'package:flutter/material.dart';
import '../model/imageModel.dart';

class ImageList extends StatelessWidget{
  final List <ImageModel> images;
  ImageList(this.images);

  //Widget @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context,int index)
      {
        return buildImage(images[index]);
      });
  }
 // Widget buildImage( ImageModel image){
    Widget buildImage(ImageModel image) {
    
        return Container(
          decoration: BoxDecoration(border: Border.all(color:Colors.amberAccent)),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                child: Image.network(image.url),
                padding: EdgeInsets.only(bottom:10.0),
              ),
              
              Text(image.title)
            ]
          ),
        );
    }
  }
  
//}