import 'sign_up.dart';
import '../widgets/main_button.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/custom_text_form_field.dart';
import 'package:neumorphic_design/nav_bar/bottom_nav_bar.dart';
import 'package:neumorphic_design/core/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: NeumorphicBackground(
        borderRadius: BorderRadius.circular(10),
        padding: const EdgeInsets.all(16),
        backendColor: AppColors.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello!',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.bold, color: AppColors.blackColor),
            ),
            Text(
              'Welcome Back',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold, color: AppColors.blackColor),
            ),
            SizedBox(height: size.height / 15),
            const CustomTextFormField(hint: 'E-mail'),
            SizedBox(height: size.height / 40),
            const CustomTextFormField(hint: 'Password'),
            SizedBox(height: size.height / 40),
            Row(
              children: [
                NeumorphicCheckbox(
                  value: val,
                  style: const NeumorphicCheckboxStyle(
                    selectedDepth: -2,
                    unselectedDepth: 2,
                    selectedIntensity: 0.9,
                    unselectedIntensity: 0.9,
                    disabledColor: AppColors.mainColor,
                    selectedColor: AppColors.primaryColor,
                  ),
                  padding: const EdgeInsets.all(4),
                  onChanged: (value) {
                    setState(() => val = value);
                  },
                ),
                SizedBox(width: size.width / 35),
                Text(
                  'Keep me logged in',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                )
              ],
            ),
            SizedBox(height: size.height / 10),
            MainButton(
              label: 'Sign In',
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (_) => const BottomNavBarNeumorphism()));
              },
            ),
            SizedBox(height: size.height / 55),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const SignUpScreen()),
                      (route) => false,
                    );
                  },
                  child: const Text(
                    'SignUp now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
