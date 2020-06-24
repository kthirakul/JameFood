import 'package:flutter/material.dart';
import 'package:jamefood/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      title: 'Jame Food',
      home: Home(),
    );
  }
}
