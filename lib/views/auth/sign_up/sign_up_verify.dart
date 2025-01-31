import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../controllers/verification_controller.dart';
import '../../../widgets/custom_button.dart';

import '../../../widgets/custom_textform.dart';
import 'sign_up_otp.dart';

class VerificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final verificationController = Provider.of<VerificationController>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SizedBox(height: 50,),
            const Text(
              "Verify your \nphone number",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: Color(0xff182035)),
            ),SizedBox(height:10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "We have send you an ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400, // 21px line height / 14px font size
                      color: Color(0xff606268),
                      decoration: TextDecoration.none,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                  TextSpan(
                    text: "One Time Password(OTP)\n",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      // 21px line height / 14px font size
                      color: Color(0xff313646),
                      decoration: TextDecoration.none,
                    ),
                  ), TextSpan(
                    text: "on this mobile number ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400, // 21px line height / 14px font size
                      color: Color(0xff606268),
                      decoration: TextDecoration.none,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),

            const SizedBox(height: 40),
Text('Enter mobile no.*',style: TextStyle(
  fontWeight: FontWeight.w400,fontSize: 15,color: Color(0xff747474)
),),
            SizedBox(height: 5),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffD9D9D9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:  DropdownButton<String>(
                    underline: SizedBox(),
                    value: "+880",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w400,color: Color(0xff182035)
                  ),
                    items: [
                      DropdownMenuItem(child: Text("+880",style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w400,color: Color(0xff182035)
                      ),), value: "+880"),
                      DropdownMenuItem(child: Text("+1"), value: "+1"),
                      DropdownMenuItem(child: Text("+91"), value: "+91"),
                    ],
                    onChanged: null,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextFormField(
                    hintText: "",
                    textStyle: const TextStyle(color: Colors.black54),
                    onChanged: verificationController.updatePhoneNumber,
                    errorText: verificationController.phoneError,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 70),
            CustomButton(
              text: "Get OTP",
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerificationScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
