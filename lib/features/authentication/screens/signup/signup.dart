import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mun_store/common/widgets/login_signup/form_divider.dart';
import 'package:mun_store/common/widgets/login_signup/social_buttons.dart';
import 'package:mun_store/features/authentication/screens/signup/widgets/signup_form.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(MTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: MSizes.spaceBetweenSections),

              ///Form
              SignupForm(),
              const SizedBox(height: MSizes.spaceBetweenSections),

              ///divider
              MFormDivider(dividerText: MTexts.orSignInWith.capitalize!),
              const SizedBox(height: MSizes.spaceBetweenSections),

              ///social buttons
              const MSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
