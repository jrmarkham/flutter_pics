// Import Dependencies flutter library
import 'package:flutter/material.dart';

// Import Developer Libraries
import '../models/image_model.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context){
    return ListView.builder(
        itemCount: images.length,
        itemBuilder:(context, int index){
         //  return new Image.network(images[index].url);
          return buildImage(images[index]);
        },
    );
  }
}

Widget buildImage (ImageModel image){
  return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(border:Border.all(color:Colors.grey,width:5.0, style: BorderStyle.solid)),
      child:Column(
        children:<Widget>[
          Padding(
            child:Image.network(image.url),
            padding: EdgeInsets.only(bottom: 15.0),
          ),

          Text(image.title)
      ],
  ));

}