import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_design/core/app_colors.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.size,
    this.color = AppColors.primaryColor,
    required this.icon,
  });

  final Size size;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
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
  }
}
