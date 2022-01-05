import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiPAppButton extends StatelessWidget {
  final ImageProvider<Object> imageProvider;
  final GestureTapCallback onPressed;
  final String? buttonTitle;
  const MiPAppButton(
      {Key? key,
      required this.imageProvider,
      required this.onPressed,
      this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var brightness = Theme.of(context).brightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            color: Colors.white,
            elevation: isDarkMode ? 0 : 6,
            child: InkWell(
              borderRadius: BorderRadius.circular(16.0),
              onTap: onPressed,
              hoverColor: const Color(0xff83487D).withOpacity(0.1),
              splashColor: const Color(0xff83487D).withOpacity(0.3),
              child: SizedBox(
                width: 74,
                height: 76,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image(
                    image: imageProvider,
                  ),
                ),
              ),
            ),
          ),
          buttonTitle == null
              ? Container()
              : Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: SizedBox(
                    width: 74,
                    child: Text(
                      buttonTitle!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          color: isDarkMode
                              ? const Color(0xffFFACEE)
                              : const Color(0xff764071),
                          fontSize: 12,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
