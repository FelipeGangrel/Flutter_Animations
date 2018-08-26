import 'package:flutter/material.dart';
import './loader.dart';

void main() {
  runApp(new MaterialApp(
    title: "Animation",
    color: Colors.redAccent,
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.redAccent,
      body: new Center(
        child: new Loader(),
      ),
    );
  }
}