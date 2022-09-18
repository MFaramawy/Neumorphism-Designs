import '../../core/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: NeumorphicButton(
        minDistance: -5,
        onPressed: onPressed,
        drawSurfaceAboveChild: false,
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 16),
        style: NeumorphicStyle(
          depth: 2,
          intensity: 2,
          lightSource: LightSource.top,
          color: AppColors.mainColor,
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
