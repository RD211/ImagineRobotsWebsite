import 'package:flutter/material.dart';
import 'package:newtest/pages/main_page.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Main(),
    );
  }
}
