import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mun_store/splash_screen.dart';
import 'package:mun_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      home: const SplashScreen(), // Starts with SplashScreen
    );
  }
}
