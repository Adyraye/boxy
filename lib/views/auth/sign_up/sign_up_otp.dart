import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../controllers/otp_controller.dart';
import '../../../widgets/custom_button.dart';
import 'sign_up_success.dart';

class OtpVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<OtpController>(
          builder: (context, otpController, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Center(
                  child: Text(
                    'OTP Verification',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Color(0xff182035),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Enter the code from the SMS we sent to\n",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff606268),
                          ),
                        ),
                        TextSpan(
                          text: otpController.otpModel.phoneNumber.isNotEmpty
                              ? otpController.otpModel.phoneNumber
                              : "Your Phone Number Here",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff313646),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "${otpController.secondsRemaining}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) {
                    return SizedBox(
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        cursorColor: Colors.orange,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          counterText: '',
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                        onChanged: (value) {
                          if (value.isNotEmpty && index < 5) {
                            FocusScope.of(context).nextFocus();
                          }
                          otpController.setOtp(otpController.otpModel.otp + value);
                        },
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "I didn't receive any code. ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff606268),
                          ),
                        ),
                        TextSpan(
                          text: "RESEND",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9899A0),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: CustomButton(
                    text: 'Send OTP',
                    onPressed: () {

                      // otpController.setPhoneNumber("+1234567890");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpCompletedScreen()));
                      otpController.startTimer();
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
