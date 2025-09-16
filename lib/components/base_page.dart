import 'package:flutter/material.dart';
import '../components/base_appbar.dart';
import '../components/base_drawer.dart';
import '../constants.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  const BasePage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width > 900;

    if (isDesktop) {
      return Scaffold(
        body: Row(
          children: [
            BaseDrawer(),
            Expanded(child: child),
          ],
        ),
        backgroundColor: AppColors.background,
      );
    } else {
      return Scaffold(
        appBar: BaseAppBar(),
        body: child,
        backgroundColor: AppColors.background,
      );
    }
  }
}
