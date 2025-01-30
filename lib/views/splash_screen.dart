import 'package:flutter/material.dart';

import 'onboarding_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE25E00),
      body: Center(
        child: Text(
          'Boxy',
          style: TextStyle(
            fontSize: 96,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}