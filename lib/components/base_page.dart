import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constants.dart';

class BasePage extends StatelessWidget {
  final Widget child;

  // const BasePage({Key? key, required this.child}) : super(key: key);
  const BasePage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: Size.square(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Center(
            child: SizedBox(
              width: 75,
              height: 75,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.textSecondary, width: 4),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('../../assets/images/icon.png'),
                ),
              ),
            ),
          ),
          backgroundColor: AppColors.primary,
        ),
      ),
    );
  }
}
