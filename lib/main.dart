import 'package:flutter/material.dart';
import 'package:news_pb_task3/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(primaryColor: Color(0xFF1D1E33),),
      home: Home(),
    );
  }
}
