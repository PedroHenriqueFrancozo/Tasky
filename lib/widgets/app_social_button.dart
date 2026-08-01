import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasky_flutter/theme/app_colors.dart';
import 'package:tasky_flutter/theme/app_text_styles.dart';

class AppSocialButton extends StatelessWidget{
    final String text;
    final VoidCallback onPressed;
    final String imagePath;

    const AppSocialButton({
        super.key,

        required this.imagePath,
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
              SvgPicture.asset(imagePath),
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


            

        