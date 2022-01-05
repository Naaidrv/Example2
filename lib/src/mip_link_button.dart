import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiPLinkButton extends StatelessWidget {
  final ImageProvider<Object> imageProvider;
  final GestureTapCallback onPressed;
  final String? buttonTitle;
  const MiPLinkButton(
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
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            elevation: isDarkMode ? 0 : 4,
            child: InkWell(
              borderRadius: BorderRadius.circular(10.0),
              onTap: onPressed,
              child: Container(
                width: 165,
                height: 109,
                child: Image(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          buttonTitle == null
              ? Container()
              : Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: SizedBox(
                    width: 165,
                    child: Text(
                      buttonTitle!,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      style: TextStyle(
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          fontWeight: FontWeight.w500,
                          color: isDarkMode
                              ? const Color(0xffDFE3E3)
                              : const Color(0xff50434B),
                          fontSize: 13,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
