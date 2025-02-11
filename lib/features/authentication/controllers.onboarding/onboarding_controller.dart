import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Page controller
  final PageController pageController = PageController();

  // Observable for current page index
  Rx<int> currentPageIndex = 0.obs;

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
      // Navigate to login or home screen
      // Get.to(LoginScreen());
    }
  }

  // Skip directly to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 500), // Fixed microseconds issue
      curve: Curves.easeInOut,
    );
  }
}