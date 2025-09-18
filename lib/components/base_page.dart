import 'package:dia3dze/styles.dart';
import 'package:flutter/material.dart';
import 'package:dia3dze/components/base_appbar.dart';
import 'package:dia3dze/components/base_drawer.dart';
import 'package:dia3dze/components/header.dart';
import 'package:dia3dze/components/footer.dart';
import 'package:dia3dze/constants.dart';

class BasePage extends StatelessWidget {
  final List<Widget> children;
  const BasePage({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isDesktop = screenWidth > BaseLayout.desktopBreakPoint;

    if (isDesktop) {
      return Scaffold(
        body: Row(
          children: [
            const BaseDrawer(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal:
                              screenWidth *
                              BasePageStyles.horizontalPaddingPercent,
                          vertical: BasePageStyles.verticalPadding,
                        ),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: BasePageStyles.maxContentWidth,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: children,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.background,
      );
    } else {
      return Scaffold(
        appBar: const BaseAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        screenWidth * BasePageStyles.horizontalPaddingPercent,
                    vertical: BasePageStyles.verticalPadding,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: BasePageStyles.maxContentWidth,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: children,
                    ),
                  ),
                ),
              ),
            ),
            const Footer(),
          ],
        ),
        backgroundColor: AppColors.background,
      );
    }
  }
}
