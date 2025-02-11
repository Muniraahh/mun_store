import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';  // Import GetX package
import 'package:mun_store/features/authentication/screens/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to OnBoardingScreen after 5 seconds
    Timer(const Duration(seconds: 5), () {
      Get.off(() => OnBoardingScreen()); // Replaces SplashScreen
    });
  }

  @override
  Widget build(BuildContext context) {
    // Check current theme mode to select the appropriate logo
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
