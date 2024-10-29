import 'package:coffee/main.dart';
import 'package:coffee/pages/page1.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(coffee());
}
class coffee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: home(),
    theme: ThemeData(brightness: Brightness.dark,
      primarySwatch: Colors.orange,
    ),

  );

  }
}
