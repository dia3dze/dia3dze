import 'package:dia3dze/styles.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // default appbar height.

  @override
  build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.background, width: 2),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('../../assets/images/icon.png'),
              ),
            ),
          ),
          Text(" DIA3DZE", style: BaseTextStyles.appBarTitleStyle),
        ],
      ),
      backgroundColor: AppColors.primary,
      actions: [
        if (MediaQuery.of(context).size.width > 600) ...[
          TextButton(
            onPressed: () {},
            child: Text("About Me", style: BaseTextStyles.appBarActionStyle),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Projects", style: BaseTextStyles.appBarActionStyle),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Resume", style: BaseTextStyles.appBarActionStyle),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Contact", style: BaseTextStyles.appBarActionStyle),
          ),
        ] else ...[
          MenuAnchor(
            builder: (context, controller, child) {
              return IconButton(
                icon: const Icon(
                  Icons.menu_rounded,
                  color: AppColors.background,
                ),
                onPressed: () {
                  controller.open();
                },
              );
            },
            menuChildren: [
              MenuItemButton(
                onPressed: () {
                  // Handle About Me
                },
                child: Text(
                  "About Me",
                  style: BaseTextStyles.appBarDropDownActionStyle,
                ),
              ),
              MenuItemButton(
                onPressed: () {
                  // Handle Projects
                },
                child: Text(
                  "Projects",
                  style: BaseTextStyles.appBarDropDownActionStyle,
                ),
              ),
              MenuItemButton(
                onPressed: () {
                  // Handle Resume
                },
                child: Text(
                  "Resume",
                  style: BaseTextStyles.appBarDropDownActionStyle,
                ),
              ),
              MenuItemButton(
                onPressed: () {
                  // Handle Contact
                },
                child: Text(
                  "Contact",
                  style: BaseTextStyles.appBarDropDownActionStyle,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
