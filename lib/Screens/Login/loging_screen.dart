import 'package:flutter/material.dart';
import 'package:tasky_flutter/theme/app_colors.dart';
import 'package:tasky_flutter/theme/app_text_styles.dart';
import 'package:tasky_flutter/widgets/app_text_field.dart';
import 'package:tasky_flutter/widgets/app_button.dart';
import 'package:tasky_flutter/widgets/app_header.dart';
import 'package:tasky_flutter/widgets/app_social_button.dart';

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
              const AppHeader(),

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
                child: AppButton(
                  text: 'Entrar',
                  onPressed: () {},
                ),
              ),

              const SizedBox(height: 40,),

              SizedBox(
                width: 354,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: const Divider(
                      color: AppColors.divider,
                      thickness: 1,
                    )),
                    const SizedBox(width: 8,),
                    Text('ou continue com',
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Expanded(child: const Divider(
                      color: AppColors.divider,
                      thickness: 1,
                    )),
                  ],
                ),
              ),

              const SizedBox(height: 40,),

              SizedBox(
                width: 344,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppSocialButton(
                      imagePath: 'assets/images/google.svg',
                      text: 'Google',
                      onPressed: (){}),
                    
                    const SizedBox(width: 8,),
                      
                    AppSocialButton(
                      imagePath: 'assets/images/apple.svg',
                      text: 'Apple', 
                      onPressed: (){}),
                  ],
                ),
              ),


              const SizedBox(height: 80,),

              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Não tem uma conta?', 
                      style: AppTextStyles.text,
                    ),
                    TextButton(
                    onPressed: () {}, 
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.white,
                      textStyle: AppTextStyles.subButton,
                    ),
                    child: Text('Cadastra-se',)),
                  ],
                ),
              ),
            ],
          ) ,
        ),
      ),
    );
  }
}


