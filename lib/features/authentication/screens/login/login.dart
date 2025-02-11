import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mun_store/common/styles/spacing_styles.dart';
import 'package:mun_store/common/widgets/login_signup/form_divider.dart';
import 'package:mun_store/common/widgets/login_signup/social_buttons.dart';
import 'package:mun_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:mun_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:mun_store/utils/constants/sizes.dart';
import 'package:mun_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: MSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title and sub title
              const MLoginHeader(),

              ///Form
              const MLoginForm(),

              ///Divider
              MFormDivider(dividerText: MTexts.orSignInWith.capitalize!),
              const SizedBox(height: MSizes.spaceBetweenSections),

              ///footer
              const MSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
