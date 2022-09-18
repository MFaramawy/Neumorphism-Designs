import 'package:flutter/cupertino.dart';
import 'package:neumorphic_design/core/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class OnBoardingData {
  static final List<Widget> shapes = [
    const Shape1(),
    const Shape2(),
    const Shape3()
  ];
  static final List<String> text = [
    'A neumorphic button that plays with the depth to respond to user interaction',
    'A set of neumorphic button whits only one selected at time, depending on a value and groupValue',
    'A set of neumorphic button whits only one selected at time, depending on a value and groupValue',
  ];
}

class Shape1 extends StatelessWidget {
  const Shape1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 2.3,
      height: size.height / 2.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              rectangle(
                size: size,
                icon: CupertinoIcons.person_crop_circle_fill,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              rectangle(
                size: size,
                icon: CupertinoIcons.alarm,
              ),
              SizedBox(width: size.width / 40),
              rectangle(
                size: size,
                icon: CupertinoIcons.double_music_note,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget rectangle({
    required Size size,
    required IconData icon,
  }) =>
      Stack(
        alignment: Alignment.center,
        children: [
          Neumorphic(
            style: const NeumorphicStyle(
              depth: 2,
              intensity: 1,
              shape: NeumorphicShape.flat,
              lightSource: LightSource.top,
              boxShape: NeumorphicBoxShape.stadium(),
            ),
            child: SizedBox(
              width: size.width / 4.5,
              height: size.height / 9.5,
            ),
          ),
          Icon(icon, size: size.height / 15, color: AppColors.primaryColor),
        ],
      );
}

class Shape2 extends StatelessWidget {
  const Shape2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Neumorphic(
      style: const NeumorphicStyle(
        depth: 5,
        intensity: 1,
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: SizedBox(
        width: size.width / 3.3,
        height: size.height / 3.5,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final size = constraints.maxWidth + constraints.maxHeight;
            return Stack(
              alignment: Alignment.center,
              children: [
                Neumorphic(
                  style: const NeumorphicStyle(
                    depth: -5,
                    intensity: 5,
                    shape: NeumorphicShape.flat,
                    lightSource: LightSource.topLeft,
                    boxShape: NeumorphicBoxShape.circle(),
                    border: NeumorphicBorder(
                      width: .2,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  child: SizedBox(
                    width: size / 3,
                    height: size / 4,
                  ),
                ),
                NeumorphicIcon(
                  Icons.close_rounded,
                  size: size / 3.5,
                  style: const NeumorphicStyle(
                    depth: 2,
                    intensity: 3,
                    color: AppColors.primaryColor,
                    shadowLightColor: AppColors.primaryColor,
                  ),
                ),
                Neumorphic(
                  style: const NeumorphicStyle(
                    depth: -3,
                    intensity: 1,
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  child: SizedBox(
                    width: size / 13,
                    height: size / 13,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget item(double size) => Neumorphic(
        style: const NeumorphicStyle(
          depth: -5,
          intensity: 5,
          shape: NeumorphicShape.flat,
          lightSource: LightSource.topLeft,
          boxShape: NeumorphicBoxShape.circle(),
          border: NeumorphicBorder(
            width: .4,
            color: AppColors.primaryColor,
          ),
        ),
        child: SizedBox(
          width: size / 27,
          height: size / 27,
        ),
      );
}

class Shape3 extends StatelessWidget {
  const Shape3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height / 2.5,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final size = constraints.maxWidth + constraints.maxHeight;
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              NeumorphicIcon(
                CupertinoIcons.globe,
                size: size / 3.5,
              ),
              Positioned(
                top: size / 50,
                right: size / 10,
                child: NeumorphicIcon(
                  Icons.location_pin,
                  size: size / 5.7,
                ),
              ),
              Positioned(
                top: size / 3.7,
                left: size / 6,
                child: NeumorphicIcon(
                  CupertinoIcons.airplane,
                  size: size / 30,
                  style: const NeumorphicStyle(
                    color: AppColors.primaryColor,
                    lightSource: LightSource.top,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton(
      {Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      minDistance: -8,
      style: const NeumorphicStyle(
        depth: 5,
        intensity: 5,
        lightSource: LightSource.top,
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      padding: const EdgeInsets.all(20),
      onPressed: onPressed,
      child: Icon(
        icon,
        color: AppColors.primaryColor,
      ),
    );
  }
}
