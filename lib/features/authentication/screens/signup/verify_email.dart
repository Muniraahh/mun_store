import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mun_store/common/widgets/success_screen/success_screen.dart';
import 'package:mun_store/utils/constants/sizes.dart';
import 'package:mun_store/utils/constants/text_strings.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(MSizes.defaultSpace),
            child: Column(
              children: [
                // Image
                Image(image: const AssetImage(MImages.deliveredEmailIllustration),width: MHelperFunctions.screenWidth() * 0.6,),
                const SizedBox(height: MSizes.spaceBetweenItems),

                //Title & SubTitle
                Text(MTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                const SizedBox(height: MSizes.spaceBetweenItems),
                Text('support@coding.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
                const SizedBox(height: MSizes.spaceBetweenItems),
                Text(MTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
                const SizedBox(height: MSizes.spaceBetweenSections),

                // Buttons
                SizedBox(width: double.infinity, child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                  image: MImages.staticSuccessIllustration,
                  title: MTexts.yourAccountCreatedTitle,
                  subTitle: MTexts.yourAccountCreatedSubTitle,
                  onPressed: () => Get.to(() => const LoginScreen()),
                ),) ,
                    child: const Text(MTexts.mContinue)
                ),
                ),
                const SizedBox(height: MSizes.spaceBetweenItems),
                SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(MTexts.resendEmail))),

              ],
            ),),
      ),
    );

  }
}