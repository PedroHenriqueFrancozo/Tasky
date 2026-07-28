import 'package:flutter/material.dart';
import 'package:tasky_flutter/theme/app_colors.dart';
import 'package:tasky_flutter/theme/app_text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center( 
          child: Padding(padding: EdgeInsets.all(24),
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
                    style: TextStyle(
                    fontFamily: 'Cormorant Garamond',
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: AppColors.white,
                    ),
                  ),
                ],
              ),

              
              Text('Organize suas tarefas. Alcance seus objetivos.',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 13,
                ),
              ),

              SizedBox(height: 40),

              SizedBox(
                width: 354,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('E-mail',
                      style: TextStyle(
                        color: AppColors.white
                      ),
                    ),
                    SizedBox(height: 8,),

                    TextField(decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      prefixIconColor: AppColors.white,
                      hintText: 'Digite seu e-mail',
                      hintStyle: TextStyle( 
                        color: AppColors.white,
                      ),
                      

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
                        )
                      )  
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),   
            ),

              SizedBox(
                width: 354,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Text('Senha',
                      style: TextStyle(
                        color: AppColors.white,
                        ),                     
                    ),
                    
                    SizedBox(height: 8,),
                    TextField(
                      obscureText: false, decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),  
                        prefixIconColor: AppColors.white,                      
                        hintText: 'Digite sua senha',
                        hintStyle: TextStyle(
                          color: AppColors.white,
                        ),
                        suffixIcon: Icon(Icons.visibility_outlined),
                        suffixIconColor: AppColors.white,


                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color:AppColors.inputBackground,
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: AppColors.inputBackground,

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: AppColors.focusBorder,
                        )
                      )  
                    ),                                                               
                  ),
                ],
              ),
            ),
            
              SizedBox(height: 8,),

              SizedBox(
                width: 354,
                  child: Align(
                    alignment: Alignment.centerRight,

                    child: TextButton(
                      onPressed: () {}, 
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.white,
                      ),
                      child: Text('Esqueceu sua senha?')
                    ),
                  ),
              ),
              
              SizedBox(height: 40,),

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
                  textStyle: TextStyle( 
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                    ),
                ),
                child: Text('Entrar')),
              ),

              SizedBox(height: 16,),

              TextButton(
              onPressed: () {}, 
              child: Text('Cadastra-se')),
            ],
          ) ,
        ),
      ),
    );
  }
}


