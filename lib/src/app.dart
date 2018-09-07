// Import flutter library

import 'package:flutter/material.dart';

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
  void fetchImage(){
    
  }


  Widget build(context){
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            title: Text(
                "Let's see some Images!!"
            ),
          ),
          body: Text('Images $counter'),
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
