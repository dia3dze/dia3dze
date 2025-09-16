import 'package:dia3dze/constants.dart';
import 'package:flutter/material.dart';

class DrawerDivider extends StatelessWidget {
  const DrawerDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Divider(color: AppColors.primaryLight),
    );
  }
}
