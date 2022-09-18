import 'onboarding_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:neumorphic_design/core/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_design/auth/screens/sign_in.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NeumorphicOnBoarding extends StatelessWidget {
  const NeumorphicOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: NeumorphicBackground(
        child: Neumorphic(
          style: NeumorphicStyle(
            depth: -3,
            intensity: 2,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(30),
            ),
          ),
          margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: NeumorphicBackground(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 2,
                    child: PageView.builder(
                      itemCount: OnBoardingData.shapes.length,
                      controller: controller,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return LayoutBuilder(
                          builder: (context, constraints) {
                            return Column(
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth,
                                  height: constraints.maxHeight / 8,
                                ),
                                SizedBox(
                                  width: constraints.maxWidth,
                                  height: constraints.maxHeight / 2,
                                  child: OnBoardingData.shapes[index],
                                ),
                                SizedBox(
                                  width: constraints.maxWidth,
                                  height: constraints.maxHeight / 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.height / 50),
                                  child: Text(
                                    OnBoardingData.text[index],
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: size.height / 15 / 112),
                  SmoothPageIndicator(
                    controller: controller,
                    count: OnBoardingData.shapes.length,
                    effect: CustomizableEffect(
                      dotDecoration: DotDecoration(
                        width: size.width / 30,
                        color: AppColors.inactiveGray,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      activeDotDecoration: DotDecoration(
                        width: size.width / 16,
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height / 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OnBoardingButton(
                        icon: Icons.arrow_back_ios_new,
                        onPressed: () {
                          controller.page == OnBoardingData.shapes.length - 3
                              ? ''
                              : controller.previousPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOutSine);
                        },
                      ),
                      OnBoardingButton(
                        icon: Icons.arrow_forward_ios,
                        onPressed: () {
                          controller.page == OnBoardingData.shapes.length - 1
                              ? Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          const SignInScreen()),
                                )
                              : controller.nextPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOutSine);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
