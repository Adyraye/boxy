

import 'package:box_delivery_app/widgets/custom_textform.dart';
import 'package:box_delivery_app/widgets/forget_otp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/forget_pass_controller.dart';


import '../../../widgets/custom_button.dart';
import 'for_otp.dart';

import '../sign_in/sign_in.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              Center(
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff21252C)
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: const Text(
                  'Enter your email address, we will \n                 send an OTP',
                  style: TextStyle(
                    color: Color(0xff76889A),
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
              //onChanged: (value) => context.read<AuthController>().setEmail(value), textStyle: TextStyle(),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF21252C),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                hintText: 'Enter password',
                obscureText: true,
                onChanged: (value) => context.read<AuthController>().setEmail(value), textStyle: TextStyle(),

              ),
          SizedBox(height: 20,),
              CustomButton(
                text: 'Continue',
                onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassOtp()));
                },
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Remember password? ',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF7A848C),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle create account
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF21252C),
                        ),
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
