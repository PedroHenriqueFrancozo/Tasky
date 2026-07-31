import 'package:flutter/material.dart';
import 'package:tasky_flutter/theme/app_text_styles.dart';

class AppHeader extends StatelessWidget{

  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/images/logo.png',
            width: 54,
            height: 54,
          ),

          SizedBox(width: 8),

          Text('Tasky',
          style: AppTextStyles.title
          ),
        ]
      ),

        const SizedBox(height: 8),

        Text('Organize suas tarefas. Alcance seus objetivos.',
          style: AppTextStyles.subtitle
        )
      ]
    );
  }
}

