import 'package:flutter/material.dart';
import 'package:fresh_box/ui/widget/my_button.dart';
import 'package:fresh_box/ui/widget/my_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/fresh_box.png',
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Let’s Sign You In',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Text(
                'Welcome back, you’ve been missed!',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 24),
              Text(
                'User name or email',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 12),
              MyTextField(hint: 'Enter your email'),
              SizedBox(height: 24),
              MyTextField(
                hint: 'Enter your password',
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password ?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              MyButton(text: "Login"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account ?',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Column(
                  children: [
                    MyButton(
                      backGroundColor: Colors.white,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google.png',
                            height: 48,
                            width: 48,
                          ),
                          Text('Continue with Google', style: TextStyle(
                            color: Color(0xFF111A2C),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          ),)
                        ],
                      ),                    ),
                    SizedBox(height: 14,),
                    MyButton(
                      backGroundColor: Colors.blue,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/facebook.png',
                            height: 32,
                            width: 32,
                          ),
                          Text('Continue with FaceBook', style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
