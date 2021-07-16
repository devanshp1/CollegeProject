import 'package:flutter/material.dart';
import 'animations.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implicit Animation  Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: AllAnimmations(key: key,)
    );
  }
}

