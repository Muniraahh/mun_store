import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mun_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:mun_store/utils/constants/image_strings.dart';
import 'package:mun_store/utils/constants/text_strings.dart';
import 'package:mun_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:mun_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mun_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:mun_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';

class OnBoardingScreen extends StatelessWidget {
  final OnBoardingController controller = Get.put(OnBoardingController()); // ✅ Initialize the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView (Main Content)
          Positioned.fill(
            child: PageView(
              controller: controller.pageController,
              onPageChanged: (index) => controller.updatePage(index), // ✅ Update observable
              children: [
                OnBoardingPage(
                  image: MImages.onBoardingImage1,
                  title: MTexts.onBoardingTitle1,
                  subTitle: MTexts.onBoardingSubTitle1,
                ),
                OnBoardingPage(
                  image: MImages.onBoardingImage2,
                  title: MTexts.onBoardingTitle2,
                  subTitle: MTexts.onBoardingSubTitle2,
                ),
                OnBoardingPage(
                  image: MImages.onBoardingImage3,
                  title: MTexts.onBoardingTitle3,
                  subTitle: MTexts.onBoardingSubTitle3,
                ),
              ],
            ),
          ),

          // Skip Button (Top-right)
          Positioned(
            top: 50,
            right: 20,
            child: OnBoardingSkip(),
          ),

          // Dot Navigation (Centered at bottom)
          Positioned(
            bottom: 30, // Adjust this if needed
            left: 20,
            right: 0,
            child: OnBoardingDotNavigation(),
            ),

          // Next Button (Bottom-right)
          Positioned(
            bottom: 30,
            right: 20,
            child: OnBoardingNextButton(),
          ),
        ],
      ),
    );
  }
}
