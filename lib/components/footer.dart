import 'package:dia3dze/constants.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surfaceDark,
      height: 180,
      margin: EdgeInsets.only(top: 20),
    );
  }
}
