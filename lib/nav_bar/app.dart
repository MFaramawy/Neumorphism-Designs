import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicNavigationBar extends StatefulWidget {
  const NeumorphicNavigationBar({Key? key}) : super(key: key);

  @override
  State<NeumorphicNavigationBar> createState() =>
      _NeumorphicNavigationBarState();
}

class _NeumorphicNavigationBarState extends State<NeumorphicNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: NeumorphicBackground(
        child: Center(
          child: Text(
            'Hello',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          height: size.height / 12,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NeumorphicButton(
                onPressed: () {},
                pressed: false,
                minDistance: -8,
                padding: const EdgeInsets.all(12),
                style: const NeumorphicStyle(
                  depth: 3,
                  intensity: 3,
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                child: Icon(
                  CupertinoIcons.house_fill,
                  size: size.height / 35,
                  color: CupertinoColors.systemIndigo,
                ),
              ),
              NeumorphicButton(
                onPressed: () {},
                pressed: false,
                minDistance: -5,
                padding: const EdgeInsets.all(12),
                style: const NeumorphicStyle(
                  depth: 3,
                  intensity: 3,
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                child: Icon(
                  Icons.settings_outlined,
                  size: size.height / 35,
                  color: CupertinoColors.systemIndigo,
                ),
              ),
              NeumorphicButton(
                onPressed: () {},
                pressed: false,
                minDistance: -5,
                padding: const EdgeInsets.all(12),
                style: const NeumorphicStyle(
                  depth: 3,
                  intensity: 3,
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                child: Icon(
                  CupertinoIcons.heart_fill,
                  size: size.height / 35,
                  color: CupertinoColors.systemRed,
                ),
              ),
              NeumorphicButton(
                onPressed: () {},
                pressed: false,
                minDistance: -5,
                padding: const EdgeInsets.all(12),
                style: const NeumorphicStyle(
                  depth: 3,
                  intensity: 3,
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                child: Icon(
                  CupertinoIcons.person_fill,
                  size: size.height / 35,
                  color: CupertinoColors.systemIndigo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
