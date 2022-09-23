import 'package:flutter/material.dart';
import 'package:regester/Screens/SignUp.dart';
import 'package:regester/shared/Button/Button.dart';
import 'package:regester/shared/TextFormFiedl/TextFormField.dart';

class LogIn  extends  StatelessWidget {
  static final route='/login';

  GlobalKey<FormState> formKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              /// Color
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff6cb4d0),
                        Color(0xff52d0c5),
                        Color(0xff42e0be),
                        Color(0xff37ebba),
                      ]
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.menu,color: Colors.white,size: 30,)
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Text login
                    SizedBox(height: 40,),
                    Text('LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Color(0xff4eeec2),
                      ),
                    ),

                    SizedBox(height: 40,),
                    /// Forms
                    Material(
                      shadowColor: Colors.grey,
                      elevation: 5,
                      child: DefaultTextFormField(
                        hintName: 'Email',
                        validate: (){}
                      ),
                    ),
                    SizedBox(height: 40,),
                    Material(
                      shadowColor: Colors.grey,
                      elevation: 5,
                      child: DefaultTextFormField(
                        hintName: 'Password',
                        validate: (){},
                      ),
                    ),

                    SizedBox(height: 40,),

                    /// Text ( Forget and login )
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Forget Password ?',
                          style: TextStyle(
                          fontSize: 16,
                            color: Color(0xff4eeec2),

                          ),
                        ),
                        DefalutButton(
                            text: 'Login',
                          height: 50,
                          width: 120,
                          blurRadius: 3,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60,),

              ///Button Log IN
              InkWell(
                onTap: (){
                  if(formKey.currentState!.validate()){
                    Navigator.pushNamed(context, SignUp.route);
                  }

                },
                child: DefalutButton(
                  text: 'Sign Up',
                  height: 50,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
