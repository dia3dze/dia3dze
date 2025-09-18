import 'package:dia3dze/constants.dart';
import 'package:flutter/material.dart';

class BaseTextStyles {
  static const appBarTitleStyle = TextStyle(
    color: AppColors.background,
    fontWeight: FontWeight.w700,
  );

  static const drawerTitleStyle = TextStyle(
    color: AppColors.background,
    fontWeight: FontWeight.w900,
    fontSize: 26,
  );

  static const appBarActionStyle = TextStyle(
    color: AppColors.background,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );

  static const drawerActionStyle = TextStyle(
    color: AppColors.background,
    fontWeight: FontWeight.w500,
    fontSize: 22,
  );

  static const appBarDropDownActionStyle = TextStyle(
    color: AppColors.textPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );
}

class BaseIconStyles {
  static const double drawerActionSize = 28;
}

class BaseLayout {
  static const double desktopBreakPoint = 900;
  static const double drawerWidth = 250;
  static const double drawerDividerWidth = 5;
  static const double drawerLogoSize = 200;
  static const double drawerLogoBorderWidth = 2.0;
  static const double drawerTopPaddingFactor = 0.05;
  static const double drawerItemSpacing = 8.0;
}

class BaseButtonStyles {
  static const ButtonStyle downloadResumeStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(AppColors.primaryLight),
    foregroundColor: WidgetStatePropertyAll(AppColors.textPrimary),
    padding: WidgetStatePropertyAll(EdgeInsets.all(15)),
    elevation: WidgetStatePropertyAll(2.5),
  );
}

class HeaderStyles {
  static const double topPadding = 10;
  static const double bottomPadding = 5;
  static const double horizontalPaddingPercent = 0.05;

  static const double iconTextSpacing = 4;
  static const double locationTimeSpacing = 8;
  static const double clockTextSpacing = 4;

  static const double clockIconSize = 16;
}

class BasePageStyles {
  static const double verticalPadding = 10;
  static const double horizontalPaddingPercent = 0.05;

  static const double maxContentWidth = 1200;

  static const double contentSpacing = 10;

  static const double iconTextSpacing = 4;
  static const double locationTimeSpacing = 8;
  static const double clockTextSpacing = 4;
  static const double clockIconSize = 16;
}
