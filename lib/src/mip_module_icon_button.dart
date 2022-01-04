import 'package:flutter/material.dart';

class MiPModuleIconButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final IconData iconData;

  const MiPModuleIconButton(
      {Key? key, required this.onPressed, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return SizedBox(
      width: 60,
      height: 60,
      child: Ink(
        decoration: ShapeDecoration(
          shape: const CircleBorder(),
          color: isDarkMode ? const Color(0xffFFACEE) : const Color(0xffF8D8F2),
        ),
        child: IconButton(
          iconSize: 28,
          onPressed: onPressed,
          icon: Icon(
            iconData,
            color: const Color(0xff330633),
          ),
          splashRadius: 30,
        ),
      ),
    );
  }
}
