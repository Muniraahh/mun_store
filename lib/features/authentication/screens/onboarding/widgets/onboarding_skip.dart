import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mun_store/features/authentication/screens/login/login.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Navigate to the login screen and remove onboarding from stack
        Get.off(() => LoginScreen());
      },
      child: Text('Skip'),
    );
  }
}
