import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mun_store/app.dart';
import 'package:mun_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
//import 'package:mun_store/utils/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(OnBoardingController());
  runApp(const App());
}

