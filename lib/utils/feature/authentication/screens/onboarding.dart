import 'package:flutter/material.dart';
import 'package:mun_store/utils/constants/image_strings.dart';
import 'package:mun_store/utils/constants/sizes.dart';
import 'package:mun_store/utils/constants/text_strings.dart';
import 'package:mun_store/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: MHelperFunctions.screenWidth() * 0.8,
                    height: MHelperFunctions.screenHeight() * 0.6,
                    image: const AssetImage(MImages.onBoardingImage1),
                  ),
                  Text(
                    MTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: MSizes.spaceBetweenItems),
                  Text(
                    MTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
