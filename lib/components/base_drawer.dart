import 'package:dia3dze/constants.dart';
import 'package:dia3dze/styles.dart';
import 'package:flutter/material.dart';
import 'drawer_divider.dart';

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: AppColors.primary,
          width: 250,
          height: MediaQuery.of(context).size.height,
          child: Align(
            alignment: Alignment(0, -1),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.background,
                        width: 2.0,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/icon.png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text("-- DIA3DZE --", style: BaseTextStyles.drawerTitleStyle),
                DrawerDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/about_me');
                      },
                      icon: Icon(
                        Icons.person_2,
                        size: BaseIconStyles.drawerActionSize,
                        color: AppColors.background,
                      ),
                      label: Text(
                        'About Me',
                        style: BaseTextStyles.drawerActionStyle,
                      ),
                    ),
                    SizedBox(height: 8),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/projects');
                      },
                      icon: Icon(
                        Icons.work,
                        size: BaseIconStyles.drawerActionSize,
                        color: AppColors.background,
                      ),
                      label: Text(
                        'Projects',
                        style: BaseTextStyles.drawerActionStyle,
                      ),
                    ),
                    SizedBox(height: 8),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/resume');
                      },
                      icon: Icon(
                        Icons.description,
                        size: BaseIconStyles.drawerActionSize,
                        color: AppColors.background,
                      ),
                      label: Text(
                        'Resume',
                        style: BaseTextStyles.drawerActionStyle,
                      ),
                    ),
                    SizedBox(height: 8),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                      icon: Icon(
                        Icons.mail,
                        size: BaseIconStyles.drawerActionSize,
                        color: AppColors.background,
                      ),
                      label: Text(
                        'Contact',
                        style: BaseTextStyles.drawerActionStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          color: AppColors.primaryLight,
          width: 5,
          height: MediaQuery.of(context).size.height,
        ),
      ],
    );
  }
}
