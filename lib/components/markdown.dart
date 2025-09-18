import 'package:dia3dze/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String label;
  final int level;
  const Header({super.key, required this.label, required this.level});

  @override
  Widget build(BuildContext context) {
    double fontSize = 18;
    switch (level) {
      case 1:
        fontSize = 48;
        break;
      case 2:
        fontSize = 32;
        break;
      case 3:
        fontSize = 24;
        break;
      case 4:
        fontSize = 20;
        break;
      case 5:
        fontSize = 14;
        break;
    }
    return Text(
      label,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
    );
  }
}
