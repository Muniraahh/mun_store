import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables

  //update current index when page scroll
  void updatePageIndicator(index) {}

  // jump to the specific dot selected page.
  void dotNavigationClick(index) {}

  // update current index & jump to the next page
  void nextPage() {}

  // update current index & jump to the last page
  void skipPage() {}

}