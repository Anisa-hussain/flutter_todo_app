import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}): super(key : key);

  //this widget is the root of your application.
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
  title: 'ToDo App',
  home: Home(),
 );//MaterialApp
  }


  }
