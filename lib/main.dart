import 'package:flutter/material.dart';
import 'package:flutter_dice_app/gradiente_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Colors.blue.shade600,
            Colors.blue.shade900,
          ],
        ),
      ),
    ),
  );
}
