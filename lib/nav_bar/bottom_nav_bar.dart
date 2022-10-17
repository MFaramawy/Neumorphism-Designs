import 'package:flutter/cupertino.dart';
import 'package:neumorphic_design/core/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BottomNavBarNeumorphism extends StatefulWidget {
  const BottomNavBarNeumorphism({Key? key}) : super(key: key);

  @override
  State<BottomNavBarNeumorphism> createState() =>
      _BottomNavBarNeumorphismState();
}

class _BottomNavBarNeumorphismState extends State<BottomNavBarNeumorphism> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Widget> screens = [
      bodyItem(
        context: context,
        title: 'Screen1',
        icon: CupertinoIcons.house_fill,
        iconColor: AppColors.primaryColor,
      ),
      bodyItem(
        context: context,
        title: 'Screen2',
        icon: CupertinoIcons.heart_fill,
        iconColor: CupertinoColors.systemRed,
      ),
      bodyItem(
        context: context,
        title: 'Screen3',
        icon: CupertinoIcons.person_fill,
        iconColor: AppColors.primaryColor,
      ),
      bodyItem(
        context: context,
        title: 'Screen4',
        icon: Icons.settings_outlined,
        iconColor: AppColors.primaryColor,
      ),
    ];
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: NavigationBar(
          selectedIndex: index,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          onDestinationSelected: (value) => setState(() => index = value),
          destinations: [
            navItem(
              size: size,
              icon: CupertinoIcons.house_fill,
              color: AppColors.primaryColor,
            ),
            navItem(
              size: size,
              icon: CupertinoIcons.heart_fill,
              color: CupertinoColors.systemRed,
            ),
            navItem(
              size: size,
              icon: CupertinoIcons.person_fill,
              color: AppColors.primaryColor,
            ),
            navItem(
              size: size,
              icon: Icons.settings_outlined,
              color: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

Widget bodyItem({
  required String title,
  required IconData icon,
  required Color? iconColor,
  required BuildContext context,
}) =>
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NeumorphicIcon(
            icon,
            size: MediaQuery.of(context).size.width / 2.5,
            style: NeumorphicStyle(
              shadowDarkColor: iconColor!.withOpacity(.8),
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

NavigationDestination navItem({
  required Size size,
  required Color color,
  required IconData icon,
}) =>
    NavigationDestination(
      label: '',
      icon: Neumorphic(
        padding: const EdgeInsets.all(12),
        style: const NeumorphicStyle(
          intensity: 3,
          depth: 3,
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.circle(),
        ),
        child: Icon(
          icon,
          color: color,
          size: size.height / 35,
        ),
      ),
      selectedIcon: Neumorphic(
        padding: const EdgeInsets.all(12),
        style: const NeumorphicStyle(
          depth: -5,
          intensity: 3,
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.circle(),
        ),
        child: Icon(
          icon,
          color: color,
          size: size.height / 35,
        ),
      ),
    );
