import 'package:box_delivery_app/controllers/login_controller.dart';
import 'package:box_delivery_app/controllers/onboarding_provider.dart';
import 'package:box_delivery_app/views/login_view.dart';
import 'package:box_delivery_app/views/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:box_delivery_app/views/splash_screen.dart';
import 'package:provider/provider.dart';

import 'controllers/signup_controller.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boxy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFFE25E00),
        scaffoldBackgroundColor: Colors.white,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFE25E00),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE25E00),
          primary: const Color(0xFFE25E00),
          secondary: const Color(0xFF76889A),
          background: Colors.white,
        ),
      ),
      home:  SplashScreen(),
    );
  }
}