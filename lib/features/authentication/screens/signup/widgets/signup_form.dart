import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mun_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:mun_store/utils/constants/sizes.dart';
import 'package:mun_store/utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(labelText: MTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(width: MSizes.spaceBetweenInputFields),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(labelText: MTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                  ),
                )
              ],
            ),
            const SizedBox(height: MSizes.spaceBetweenInputFields),
            ///username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: MTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(height: MSizes.spaceBetweenInputFields),

            ///email
            TextFormField(
              decoration: const InputDecoration(labelText: MTexts.email, prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(height: MSizes.spaceBetweenInputFields),

            ///phone number
            TextFormField(
              decoration: const InputDecoration(labelText: MTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(height: MSizes.spaceBetweenInputFields),

            ///password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: MTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),
            const SizedBox(height: MSizes.spaceBetweenSections),

            ///terms and conditions checkbox
            MTermsAndConditionsCheckbox(),
            const SizedBox(height: MSizes.spaceBetweenSections),

            ///signup button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(MTexts.createAccount))),
          ],
        )
    );
  }
}
