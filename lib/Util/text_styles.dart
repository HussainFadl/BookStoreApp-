import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle getTitleStyle(
    {double fontSize = 18,
    FontWeight fontWeight = FontWeight.bold,
    Color color = const Color(0xff000000)}) {
  // method body
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}

TextStyle getBodyStyle(
    {double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black}) {
  // method body
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}

TextStyle getSmallStyle(
    {double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color color = const Color(0xff000000)}) {
  // method body
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}

TextStyle getHeadlineStyle(
    {double fontSize = 20,
    FontWeight fontWeight = FontWeight.normal,
    Color color = const Color(0xff000000)}) {
  // method body
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}
