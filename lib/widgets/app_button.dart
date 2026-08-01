import 'package:flutter/material.dart';
import 'package:tasky_flutter/theme/app_colors.dart';
import 'package:tasky_flutter/theme/app_text_styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AppButton({
    super.key,

    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed, 
        child: Text(text),

      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
          fixedSize: Size(344, 53),   

          textStyle: AppTextStyles.buttonText,
        ),
      ),
    );
  }
}



