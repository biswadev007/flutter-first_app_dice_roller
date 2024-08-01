import 'dart:math';
import 'package:flutter/material.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 2;

  void rollDice() {
    setState(() {
      diceRoll = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/dice-$diceRoll.png',
            height: 200,
            width: 200,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(padding: const EdgeInsets.all(20)),
          onPressed: rollDice,
          child: const Text(
            'Roll the dice',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        )
      ],
    );
  }
}
