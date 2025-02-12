import 'package:flutter/material.dart';
import 'package:mun_store/utils/constants/sizes.dart';
import 'package:mun_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              ///Title
              Text(MTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: MSizes.spaceBetweenSections),

              ///Form
            ],
          ),
        ),
      ),
    );
  }
}
