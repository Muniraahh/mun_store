import 'package:flutter/material.dart';
import 'package:mun_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:mun_store/utils/constants/sizes.dart';
import 'package:mun_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MDeviceUtils.getAppBarHeight(),
        right: MSizes.defaultSpace,
        child: TextButton(
            onPressed:() => OnBoardingController.instance.skipPage(), child: Text('Skip'),
        ),
    );
  }
}
