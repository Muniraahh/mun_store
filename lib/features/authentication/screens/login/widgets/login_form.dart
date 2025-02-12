import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mun_store/features/authentication/screens/signup/signup.dart';
import 'package:mun_store/utils/constants/sizes.dart';
import 'package:mun_store/utils/constants/text_strings.dart';

class MLoginForm extends StatelessWidget {
  const MLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: MSizes.spaceBetweenSections),
                  child: Column(
                    children: [
                      ///Email
                      TextFormField(
                        decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: MTexts.email),
                      ),
                      const SizedBox(height: MSizes.spaceBetweenInputFields),

                      ///Password
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: MTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: MSizes.spaceBetweenInputFields/ 2),

                      ///remember me and forget password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value){}),
                              const Text(MTexts.rememberMe),
                            ],
                          ),

                          ///forget password
                          TextButton(onPressed: () {}, child: const Text(MTexts.forgetPassword)),
                        ],
                      ),
                      const SizedBox(height: MSizes.spaceBetweenInputFields),

                      ///sign in button
                      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(MTexts.signIn))),
                      const SizedBox(height: MSizes.spaceBetweenItems),

                      ///create account button
                      SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(MTexts.createAccount))),
                    ],
                  ),
                ),
    );
  }
}
