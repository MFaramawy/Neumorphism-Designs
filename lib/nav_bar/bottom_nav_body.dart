import 'package:flutter/cupertino.dart';
import 'package:neumorphic_design/core/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BottomNavBody extends StatelessWidget {
  const BottomNavBody({
    super.key,
    required this.title,
    required this.icon,
    this.iconColor = AppColors.primaryColor,
  });

  final String title;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NeumorphicIcon(
            icon,
            size: MediaQuery.of(context).size.width / 2.5,
            style: NeumorphicStyle(
              shadowDarkColor: iconColor.withOpacity(.8),
              shadowLightColor: iconColor.withOpacity(.8),
            ),
          ),
          NeumorphicText(
            title,
            textStyle: NeumorphicTextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
            style: NeumorphicStyle(
              depth: 4,
              intensity: 2,
              shadowDarkColor: iconColor.withOpacity(.8),
              shadowLightColor: iconColor.withOpacity(.8),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> screens = [
  const BottomNavBody(title: 'Home', icon: CupertinoIcons.house_fill),
  const BottomNavBody(
    title: 'Favorite',
    icon: CupertinoIcons.heart_fill,
    iconColor: CupertinoColors.systemRed,
  ),
  const BottomNavBody(title: 'Profile', icon: CupertinoIcons.person_fill),
  const BottomNavBody(title: 'Settings', icon: Icons.settings_outlined),
];
