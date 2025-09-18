import 'package:dia3dze/styles.dart';
import 'package:flutter/material.dart';
import 'package:dia3dze/components/base_appbar.dart';
import 'package:dia3dze/components/base_drawer.dart';
import 'package:dia3dze/components/header.dart';
import 'package:dia3dze/constants.dart';

class BasePage extends StatelessWidget {
  final List<Widget> children;
  const BasePage({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop =
        MediaQuery.of(context).size.width > BaseLayout.desktopBreakPoint;

    if (isDesktop) {
      return Scaffold(
        body: Row(
          children: [
            BaseDrawer(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Header(), ...children],
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.background,
      );
    } else {
      return Scaffold(
        appBar: BaseAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [...children],
        ),
        backgroundColor: AppColors.background,
      );
    }
  }
}
