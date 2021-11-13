import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle getAppFont({
    required FontWeight fontWeight,
    required double fontSize,
    required Color color,
    required double letterSpacing,
    double height = 1.2,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return GoogleFonts.lato(
        textStyle: TextStyle(
      letterSpacing: letterSpacing,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: height,
    ));
  }

  static final header = getAppFont(
    fontSize: 29,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    letterSpacing: 0,
  );

  static final description = getAppFont(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color(0xff838383),
    letterSpacing: 0,
  );
  static final tileheader = getAppFont(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    letterSpacing:0,
  );
  static final tiledes = getAppFont(
		  fontSize:18,
		  fontWeight:FontWeight.w400,
		  color:Colors.black,
		  letterSpacing:0,
  );
}
