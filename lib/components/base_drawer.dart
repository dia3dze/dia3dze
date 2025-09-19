import 'package:flutter/material.dart';
import 'package:dia3dze/constants.dart';
import 'package:dia3dze/styles.dart';
import 'package:dia3dze/components/drawer_divider.dart';

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({super.key});

  Widget _drawerButton(
    BuildContext context, {
    required String route,
    required IconData icon,
    required String label,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: BaseLayout.drawerItemSpacing),
      child: TextButton.icon(
        onPressed: () => Navigator.popAndPushNamed(context, route),
        icon: Icon(
          icon,
          size: BaseIconStyles.drawerActionSize,
          color: AppColors.background,
        ),
        label: Text(label, style: BaseTextStyles.drawerActionStyle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Row(
      children: [
        Container(
          color: AppColors.primary,
          width: BaseLayout.drawerWidth,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * BaseLayout.drawerTopPaddingFactor,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(
                      BaseLayout.drawerLogoSize / 10,
                    ),
                    onTap: () => Navigator.popAndPushNamed(context, '/'),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.background,
                              width: BaseLayout.drawerLogoBorderWidth,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/icon.png',
                              width: BaseLayout.drawerLogoSize,
                              height: BaseLayout.drawerLogoSize,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "-- DIA3DZE --",
                          style: BaseTextStyles.drawerTitleStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: BaseLayout.drawerActionsPaddingLeft,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DrawerDivider(),
                    _drawerButton(
                      context,
                      route: '/about_me',
                      icon: Icons.person_2,
                      label: 'About Me',
                    ),
                    _drawerButton(
                      context,
                      route: '/projects',
                      icon: Icons.work,
                      label: 'Projects',
                    ),
                    _drawerButton(
                      context,
                      route: '/resume',
                      icon: Icons.description,
                      label: 'Resume',
                    ),
                    _drawerButton(
                      context,
                      route: '/contact',
                      icon: Icons.mail,
                      label: 'Contact',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: AppColors.primaryLight,
          width: BaseLayout.drawerDividerWidth,
          height: screenHeight,
        ),
      ],
    );
  }
}
