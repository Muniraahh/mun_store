import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:mun_store/app.dart';
import 'package:mun_store/utils/feature/authentication/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Check the current theme mode to select the appropriate logo
    final Brightness brightness = Theme.of(context).brightness;
    final String logoPath = brightness == Brightness.dark
        ? 'assets/logos/logo_dark.png'  // Dark mode logo
        : 'assets/logos/logo_light.png'; // Light mode logo

    return Scaffold(
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Center(
          child: Image.asset(logoPath, width: 200, height: 200),
        ),
      ),
    );
  }
}
