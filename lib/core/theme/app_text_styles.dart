import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle navigationUnselectedText = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 10,
    fontWeight: FontWeight.w800,
    color: AppColors.greyColor
  );

  static const TextStyle navigationSelectedText = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 10,
    fontWeight: FontWeight.w800,
    color: AppColors.primary,
  );

  static const TextStyle heading = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: Colors.black,
    
  );

  static const TextStyle viewAll = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.redColor,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.redColor,
  );

  static const TextStyle live = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.redColor,
  );

  static const TextStyle subheading = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 14,
    fontWeight: FontWeight.w800,
    color: AppColors.textColor,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 16,
    fontWeight: FontWeight.w900,
    color: AppColors.textColor,
  );

  static const TextStyle body3 = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 20,
    fontWeight: FontWeight.w900,
    color: AppColors.textColor,
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle hintText = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 14,
    color: Colors.grey,
  );
}
