import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_design/nav_bar/bottom_nav_body.dart';
import 'package:neumorphic_design/nav_bar/nav_bar_item.dart';

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
            NavBarItem(size: size, icon: CupertinoIcons.house_fill),
            NavBarItem(
              size: size,
              icon: CupertinoIcons.heart_fill,
              color: CupertinoColors.systemRed,
            ),
            NavBarItem(size: size, icon: CupertinoIcons.person_fill),
            NavBarItem(size: size, icon: Icons.settings_outlined),
          ],
        ),
      ),
    );
  }
}
