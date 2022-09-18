import '../../core/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.hint}) : super(key: key);
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 2,
        intensity: 2,
        lightSource: LightSource.top,
        oppositeShadowLightSource: true,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
        shape: NeumorphicShape.concave,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: AppColors.mainColor,
          contentPadding: const EdgeInsets.all(10.0),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
