import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../controllers/signup_controller.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textform.dart';
import '../sign_in/sign_in.dart';
import 'sign_up_verify.dart';


class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authController = Provider.of<UserController>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SizedBox(height: 30,),
              Center(
                child: const Text(
                  "Register Your New Account",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF21252C),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Name',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF21252C),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: 'Enter your name',
                onChanged: authController.updateEmail,
                errorText: authController.emailError, textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,color: Color(0xffBABFC5)
              ),
              ),

              const SizedBox(height: 20),
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
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: 'Enter email address',
                obscureText: true,
                onChanged: authController.updateEmail,
                errorText: authController.passwordError, textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xffBABFC5)
              ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF21252C),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: 'Enter password',
                obscureText: true,
                onChanged: authController.updateEmail,
                errorText: authController.passwordError, textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xffBABFC5)
              ),
              ),

              const SizedBox(height: 24),
              CustomButton(
                text: "Sign Up",
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) =>VerificationView()));
                },
              ),

              const SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
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
              SizedBox(height: 20,),
              Row(
                children: [
                  // Left Divider
                  Expanded(
                    child: Divider(
                      color: Color(0xffF1F2F6), // Adjust opacity
                      thickness: 1.68,
                      endIndent: 8, // Gap between divider and text
                    ),
                  ),
                  // Center Text
                  Text(
                    'or sign in with',
                    style: TextStyle(
                        color: Color(0xff7A848C), // Adjust opacity
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  // Right Divider
                  Expanded(
                    child: Divider(
                      color: Color(0xffF1F2F6), // Adjust opacity
                      thickness: 1.68,
                      endIndent: 8, // Gap between divider and text
                    ),
                  ),
                ],),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(width: 160,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0xFFCFD5DB)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      minimumSize: Size(160, 56),
                    ),
                    onPressed: () {  },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/google.png', // Add a Google logo asset
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Google',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF21252C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
