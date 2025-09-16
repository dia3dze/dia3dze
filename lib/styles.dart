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
