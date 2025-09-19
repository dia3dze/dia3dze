import 'package:dia3dze/constants.dart';
import 'package:dia3dze/styles.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.surface,
          height: FooterStyles.topHeight,
          alignment: Alignment.center,
          child: Text(
            "GitHub: dia3dze | Email: saba2006.diasamidze@gmail.com",
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: BaseTextStyles.baseFontSize,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: AppColors.surfaceDark,
          height: FooterStyles.bottomHeight,
          padding: const EdgeInsets.all(FooterStyles.padding),
          alignment: Alignment.center,
          child: Text(
            "© 2025 Saba Diasamidze | Built in Flutter in Georgia | Personal portfolio project",
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: BaseTextStyles.baseFontSize,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
