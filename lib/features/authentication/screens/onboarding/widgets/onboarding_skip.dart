import 'package:flutter/material.dart';
import 'package:mun_store/features/authentication/controllers.onboarding/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => OnBoardingController.instance.skipPage(),
      child: Text('Skip'),
    );
  }
}
