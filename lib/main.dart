import 'package:flutter/material.dart';
import 'package:rolldice/homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
   @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Roll Dice",
      home:HomePage(),
    );
  }
}