import 'package:flutter/material.dart';
import 'package:mun_store/utils/constants/sizes.dart';
import 'package:mun_store/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';
import '../../../controllers.onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: MSizes.defaultSpace,
      bottom: MDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.black),
        child: const Icon(Iconsax.arrow_right_3), // Fixed Iconsax usage
      ),
    );
  }
}
