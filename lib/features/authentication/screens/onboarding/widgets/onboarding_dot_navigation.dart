import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mun_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:mun_store/utils/constants/sizes.dart';
import 'package:mun_store/utils/device/device_utility.dart';
import 'package:mun_store/utils/constants/colors.dart';
import 'package:mun_store/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  final PageController pageController;

  const OnBoardingNavigation({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MDeviceUtils.getBottomNavigationBarHeight() + 20,
      left: MSizes.defaultSpace,
      child:
      Obx(() => SmoothPageIndicator(
        controller: pageController,  // Ensure this is the correct controller
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MColors.light : MColors.dark,
          dotHeight: 6,
          dotWidth: 6,
          expansionFactor: 3,
        ),
      ))
    );
  }
}
