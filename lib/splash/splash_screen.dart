import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../onboarding/onboarding_screen.dart';
import 'package:neumorphic_design/core/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () async => Navigator.push(context,
          CupertinoPageRoute(builder: (_) => const NeumorphicOnBoarding())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NeumorphicBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeumorphicIcon(
              Icons.sentiment_satisfied_alt,
              size: 80,
              style: const NeumorphicStyle(
                depth: 3,
                intensity: 1,
                color: AppColors.primaryColor,
              ),
            ),
            Center(
              child: NeumorphicText(
                'Faramawy',
                style: const NeumorphicStyle(
                  depth: 3,
                  intensity: 5,
                ),
                textStyle: NeumorphicTextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
