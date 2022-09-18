import 'sign_in.dart';
import '../widgets/main_button.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/custom_text_form_field.dart';
import 'package:neumorphic_design/core/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: NeumorphicBackground(
        backendColor: AppColors.backgroundColor,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Account',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.bold, color: AppColors.blackColor),
            ),
            SizedBox(height: size.height / 15),
            const CustomTextFormField(hint: 'Name'),
            SizedBox(height: size.height / 40),
            const CustomTextFormField(hint: 'E-mail'),
            SizedBox(height: size.height / 40),
            const CustomTextFormField(hint: 'Password'),
            SizedBox(height: size.height / 10),
            MainButton(
              label: 'Sign Up',
              onPressed: () {},
            ),
            SizedBox(height: size.height / 55),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account? '),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const SignInScreen()),
                      (route) => false,
                    );
                  },
                  child: const Text(
                    'signIn now',
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
