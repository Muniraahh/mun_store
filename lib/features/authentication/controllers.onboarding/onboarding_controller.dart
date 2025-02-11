import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mun_store/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Page controller
  final PageController pageController = PageController();

  // Observable for current page index
  RxInt currentPageIndex = 0.obs;

  /// Update current page index when the user swipes
  void updatePage(int index) {
    currentPageIndex.value = index;
  }

  // Update current index when page scrolls
  void updatePageIndex(int index) => currentPageIndex.value = index;

  // Jump to a specific page when a dot is clicked
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Move to the next page or navigate to login
  void nextPage() {
    if (currentPageIndex.value < 2) {
      int nextPage = currentPageIndex.value + 1;
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAll(() => LoginScreen());
    }
  }

  // Skip directly to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  /// Skip Onboarding and go to login page
  void skip() {
    Get.offAll(() => LoginScreen()); // Navigate to login
  }
}
