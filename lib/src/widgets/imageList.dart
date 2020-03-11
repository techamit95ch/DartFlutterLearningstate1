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
        return Image.network(images[index].url);
      });
  }
  
}