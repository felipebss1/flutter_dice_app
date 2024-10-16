import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dice_app/styled_text.dart';

//É importante deixar aqui fora para 
//não chamar excessivas vezes quando atualiza a tela
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({
    super.key,
  });

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int randomNumber = 1;
  void _rollDice() {
    setState(() {
      randomNumber = (1 + randomizer.nextInt(6));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$randomNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: _rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            backgroundColor: const Color.fromARGB(255, 60, 244, 54),
            
          ),
          child: const StyledText('Roll Dice'),
        )
      ],
    );
  }
}
