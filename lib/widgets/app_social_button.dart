import 'package:flutter/material.dart';
import 'package:tasky_flutter/theme/app_colors.dart';
import 'package:tasky_flutter/theme/app_text_styles.dart';

class AppSocialButton extends StatelessWidget{
    final String text;
    final VoidCallback onPressed;
    final IconData icon;

    const AppSocialButton({
        super.key,

        required this.icon,
        required this.text,
        required this.onPressed,
    });

@override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 164,
      height: 44,
        child: ElevatedButton(
          onPressed: onPressed, 
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.inputBackground,
            foregroundColor: AppColors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: AppColors.divider,
                width: 2,
              ),
            ),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              SizedBox(width: 8,),
              Text(text,
                style: AppTextStyles.socialButton,
              ),
            ],  
          ),
        )
    );
  }
}


            

        