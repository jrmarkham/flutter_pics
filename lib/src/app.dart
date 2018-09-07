// Import Dependencies flutter library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get; // Only import the get function
import 'dart:convert';
// Import Developer Libraries
import 'models/image_model.dart';
import 'widgets/image_list.dart';

// Create class fro custom widget
// Extend stateless widgets


// Change to Stateful Widget
// StatelessWidget
/*
class App extends StatelessWidget{
  // define build that returns widget
  // that this widget shows

  Widget build(context){
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            title: Text(
                "Let's see some Images!!"
            ),
          ),
          floatingActionButton: FloatingActionButton(
            //  child:Text('+'),
              child:Icon(Icons.add),
              onPressed: (){
                print('hmmm sexy');
              }
          ),
        )
    );
  }
}
*/

// 2 Classes Widget and Widget's State
// Add Create State method in Widget and return instance of WidgetState
// Build goes in WidgetState
// Instance vars go in WidgetState
// Data updates uses "setState" method


class App extends StatefulWidget{
  createState(){
    return AppState();
  }
}

// WidgetState Class
// State<TYPE> // Generic
class AppState extends State<App>{
  // define build that returns widget
  // that this widget shows
  int counter = 0;
  List<ImageModel> images = [];
  void fetchImage() async {
    counter++;
    final response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    final imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);

    });
  }


  Widget build(context){
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            title: Text(
                "Let's see some Images!!"
            ),
          ),
          body: new ImageList(images),
          floatingActionButton: FloatingActionButton(
            //  child:Text('+'),
              child:Icon(Icons.add),
              onPressed: fetchImage,
              /*onPressed: (){
                setState((){
                    counter++;
                    print('hmmm sexy $counter');
                });
              }*/
          ),
        )
    );
  }
}
