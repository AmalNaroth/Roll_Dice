import 'package:flutter/material.dart';
import 'package:rolldice/gradientContainer_widget.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

   final List<Color> colorsList=[
    Colors.black,
    Colors.purple
   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GradientContiner(colorsList),
    );
  }
}