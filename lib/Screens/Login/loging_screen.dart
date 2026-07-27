import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF502D55),
      body: Center( 
          child: Padding(padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Icon(Icons.check_box_outlined),
                  SizedBox(width: 8,),
                  Text('Tasky',
                    style: TextStyle(
                    fontFamily: 'Cormorant Garamond',
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),

              
              Text('Organize suas tarefas. Alcance seus objetivos.',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
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
                        color: Color(0xFFFFFFFF)
                      ),
                    ),
                    SizedBox(height: 8,),

                    TextField(decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      prefixIconColor: Color(0XFFFFFFFF),
                      hintText: 'Digite seu e-mail',
                      hintStyle: TextStyle( 
                        color:Color(0XFFFFFFFF),
                      ),
                      

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0X10FFFFFF),
                          width: 2,
                        ),                
                      ),
                      filled: true,
                      fillColor: Color(0x10FFFFFF),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0x50FFFFFF)
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
                        color: Color(0xFFFFFFFF)
                        ),                     
                    ),
                    
                    SizedBox(height: 8,),
                    TextField(
                      obscureText: true, decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),  
                        prefixIconColor: Color(0xFFFFFFFF),                      
                        hintText: 'Digite sua senha',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF)
                        ),


                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color:Color(0x10FFFFFF),
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0x10FFFFFF),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0x50FFFFFF)
                        )
                      )  
                    ),                                                               
                  ),
                ],
              ),
            ),

              SizedBox(
                width: 354,
                  child: Align(
                    alignment: Alignment.centerRight,

                    child: TextButton(
                      onPressed: () {}, 
                      child: Text('Esqueceu sua senha?')),
                  )
              ),
              
              SizedBox(height: 16,),

              SizedBox(
                width: 354,
                child: ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xFF502D55),
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


