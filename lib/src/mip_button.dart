import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiPButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String title;
  final int? type;

  const MiPButton(
      {Key? key, required this.onPressed, required this.title, this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(title),
      style: customButtonStyle(context, type),
    );
  }

  ButtonStyle? customButtonStyle(BuildContext context, int? type) {
    var brightness = Theme.of(context).brightness;
    bool isDarkMode = brightness == Brightness.dark;

    ButtonStyle? defaultButtonStyle = OutlinedButton.styleFrom(
      textStyle: TextStyle(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis),
      primary: Colors.white,
      backgroundColor: const Color(0xff83487D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      side: const BorderSide(width: 0.1, color: Colors.transparent),
    );

    ButtonStyle? secondaryButtonStyle = OutlinedButton.styleFrom(
      textStyle: TextStyle(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis),
      primary: const Color(0xff8B4380),
      backgroundColor: const Color(0xffFFD5F3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      side: const BorderSide(width: 0.1, color: Colors.transparent),
    );

    ButtonStyle? tertiaryButtonStyle = OutlinedButton.styleFrom(
      textStyle: TextStyle(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis),
      primary: const Color(0xff8B4380),
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      side: const BorderSide(width: 0.1, color: Colors.transparent),
    );

    ButtonStyle? defaultDarkButtonStyle = OutlinedButton.styleFrom(
      textStyle: TextStyle(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis),
      primary: const Color(0xff56124F),
      backgroundColor: const Color(0xffFFACEE),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      side: const BorderSide(width: 0.1, color: Colors.transparent),
    );

    ButtonStyle? secondaryDarkButtonStyle = OutlinedButton.styleFrom(
      textStyle: TextStyle(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis),
      primary: const Color(0xff712B67),
      backgroundColor: const Color(0xffFFEBF8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      side: const BorderSide(width: 0.1, color: Colors.transparent),
    );

    ButtonStyle? tertiaryDarkButtonStyle = OutlinedButton.styleFrom(
      textStyle: TextStyle(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis),
      primary: const Color(0xffFFEBF8),
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      side: const BorderSide(width: 0.1, color: Colors.transparent),
    );

    switch (type) {
      case 2:
        return isDarkMode ? secondaryDarkButtonStyle : secondaryButtonStyle;
      case 3:
        return isDarkMode ? tertiaryDarkButtonStyle : tertiaryButtonStyle;
      default:
        return isDarkMode ? defaultDarkButtonStyle : defaultButtonStyle;
    }
  }
}
