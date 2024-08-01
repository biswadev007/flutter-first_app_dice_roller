import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    this.colorsgrade = const [Colors.black54, Colors.black12],
  });

  final List<Color> colorsgrade;
  

  @override
  Widget build(context) {
    return (Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colorsgrade,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: const DiceRoller(),
    ));
  }
}
