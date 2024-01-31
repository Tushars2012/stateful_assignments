import "package:flutter/material.dart";
//import "package:stateful_app/Assignmet1.dart";
//import "package:stateful_app/Assignment2.dart";
//import "package:stateful_app/Assignment3.dart";
import "package:stateful_app/Assignment4.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment4(),
      debugShowCheckedModeBanner: false,
    );
  }
}
