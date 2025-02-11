import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mun_store/features/authentication/controllers.onboarding/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  final OnBoardingController controller = Get.find(); // ✅ Get the controller

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) => buildDot(index, controller.currentPageIndex.value)),
    ));
  }

  Widget buildDot(int index, int currentIndex) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: currentIndex == index ? 12 : 8, // ✅ This depends on the observable
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.blue : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
