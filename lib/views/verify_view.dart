import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/signup_controller.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textform.dart';


class VerificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authController = Provider.of<UserController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign up"),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Verify your phone number",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "We have sent you an One Time Password(OTP) on this mobile number.",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:DropdownButton<String>(
                    underline: SizedBox(),
                    value: "+880",
                    items: [
                      DropdownMenuItem(child: Text("+880"), value: "+880"),
                      DropdownMenuItem(child: Text("+1"), value: "+1"),
                      DropdownMenuItem(child: Text("+91"), value: "+91"),
                    ],
                    onChanged: null,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextFormField(
                    hintText: "Enter mobile no.",
                    textStyle: const TextStyle(color: Colors.black54),
                    onChanged: authController.updatePhoneNumber,
                    errorText: authController.phoneError,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            CustomButton(
              text: "Get OTP",
              onPressed: () {
                if (authController.validatePhoneNumber()) {
                  // Navigate to OTP Verification
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
