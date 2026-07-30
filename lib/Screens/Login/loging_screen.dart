import 'package:flutter/material.dart';
import 'package:tasky_flutter/theme/app_colors.dart';
import 'package:tasky_flutter/theme/app_text_styles.dart';
import 'package:tasky_flutter/widgets/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center( 
          child: Padding(padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Image.asset("assets/images/logo.png",
                  width: 56,
                  height: 56,
                  ),
                  
                  SizedBox(width: 8,),
                  Text('Tasky',
                    style: AppTextStyles.title
                  ),
                ],
              ),
              
              Text('Organize suas tarefas. Alcance seus objetivos.',
                style: AppTextStyles.subtitle
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: 354,
                child: AppTextField(
                  label: 'E-mail',
                  hintText: 'Digite seu e-mail',
                  icon: Icons.email_outlined,
              ),   
            ),

            const SizedBox(height: 16,),

              SizedBox(
                width: 354,
                child: AppTextField(
                  label: 'Senha',
                  hintText: 'Digite sua senha',
                  icon: Icons.lock_outline,
                  obscureText: true,
              ),
            ),
            
              const SizedBox(height: 8,),

              SizedBox(
                width: 354,
                  child: Align(
                    alignment: Alignment.centerRight,

                    child: TextButton(
                      onPressed: () {}, 
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.white,
                        textStyle: AppTextStyles.label,
                      ),
                      child: Text('Esqueceu sua senha?')
                    ),
                  ),
              ),
              
              const SizedBox(height: 40,),

              SizedBox(
                width: 354,
                child: ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  fixedSize: Size(344, 53),   

                  textStyle: AppTextStyles.buttonText

                ),
                child: Text('Entrar')),
                
              ),

              const SizedBox(height: 16,),

              TextButton(
              onPressed: () {}, 
              style: TextButton.styleFrom(
                foregroundColor: AppColors.white,
                textStyle: AppTextStyles.label,
              ),

              child: Text('Cadastra-se')),
            ],
          ) ,
        ),
      ),
    );
  }
}


