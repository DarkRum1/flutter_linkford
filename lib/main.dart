import 'package:flutter/material.dart';
import 'package:flutter_linkford/pages/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: Colors.white,
          primaryColor: Colors.black,
      ),
      title: 'LinkFord',
      home: HomePage(),
// home: const HomePage(),
    );
  }
}