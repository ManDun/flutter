import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightGreen[50],
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            title: Text('First App'),
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/diamond.png'),
            ),
          )
        )
      ),
    );
