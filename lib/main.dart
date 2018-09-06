// import helper library
// from flutter to get content on the screen

import 'package:flutter/material.dart';


// define main function to run app
void main(){
  // create text widget to get text on screen
  var app = MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text(
          "Let's see some Images!!"
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('hmmm sexy');
          }
       ),
    )
  );
  // take widget and get it on the device
  runApp(app);
}
// Scaffold -- App bar + floating action button


