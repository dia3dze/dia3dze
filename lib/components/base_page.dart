import 'package:flutter/material.dart';
import '../components/base_appbar.dart';
import '../constants.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  const BasePage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      appBar: const BaseAppBar(),
      backgroundColor: AppColors.background,
    );
  }
}
