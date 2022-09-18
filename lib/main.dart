import 'package:flutter/material.dart';
import 'package:neumorphic_design/core/app_colors.dart';
import 'package:neumorphic_design/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic Design',
      color: AppColors.primaryColor,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        navigationBarTheme: const NavigationBarThemeData(
          indicatorColor: Colors.transparent,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
