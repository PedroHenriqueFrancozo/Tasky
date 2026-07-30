import 'package:flutter/material.dart';
import 'package:tasky_flutter/theme/app_colors.dart';
import 'package:tasky_flutter/theme/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const AppTextField({
    super.key,

    required this.label,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
        label,
        style: AppTextStyles.label,
        ),
        
        const SizedBox(height: 8,),

        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppTextStyles.label,
            prefixIcon: Icon(icon),
            prefixIconColor: AppColors.white,

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.inputBackground,
                width: 2,
              ),                
            ),

            filled: true,
            fillColor: AppColors.inputBackground,

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.focusBorder
              ),
            ),             
          ),
        ),
      ],
    );
  }
}