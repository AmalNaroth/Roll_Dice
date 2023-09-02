import 'dart:math';

import 'package:flutter/material.dart';

final randomizer=Random();

class GradientContiner extends StatefulWidget {
  GradientContiner(this.colorList, {super.key});

  final List<Color>? colorList;

  @override
  State<GradientContiner> createState() => _GradientContinerState();
}

class _GradientContinerState extends State<GradientContiner> {
  int randomNumber=1;
  void changeRollDice() {
    setState(() {
      randomNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: widget.colorList!,
            begin: Alignment.centerRight,
            end: Alignment.centerLeft),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/dice-$randomNumber.png",
            width: 200,
          ),
          TextButton(
            onPressed: changeRollDice,
            style: TextButton.styleFrom(
                padding: EdgeInsets.all(30),
                foregroundColor: Colors.white,
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            child: const Text("Roll dice"),
          ),
        ],
      )),
    );
  }
}
