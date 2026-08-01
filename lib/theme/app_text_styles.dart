import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {

  static const TextStyle title = TextStyle(
  
    fontFamily: 'Cormorant Garamond',
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
    
  static const TextStyle subtitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 13,
    color: AppColors.white,
  );

  static const TextStyle label = TextStyle(
    fontFamily: 'Inter',
    color: AppColors.white,
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle socialButton = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
  );

}
