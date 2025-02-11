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
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Use lazyPut to avoid multiple controller instances
    final OnBoardingController controller = Get.find<OnBoardingController>();

    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Ensures proper layout rendering
        children: [
          // PageView with Controller
          Positioned.fill( // Fixes ParentDataWidget issue
            child: PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndex,
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

          // Skip button (Visible on top)
          Positioned(
            top: 50,
            right: 20,
            child: OnBoardingSkip(),
          ),

          // Smooth page indicator (Centered at the bottom)
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: OnBoardingNavigation(pageController: controller.pageController),
          ),

          // Next Button (Fixed bottom-right position)
          Positioned(
            bottom: 20,
            right: 20,
            child: OnBoardingNextButton(),
          ),
        ],
      ),
    );
  }
}