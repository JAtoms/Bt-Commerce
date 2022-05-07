import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'size_config.dart';

class GlobalTextStyles {
  // Black Text
  static TextStyle regularText(
      {double fontSize = 1.7, double lineHeight = 1.4, required Color color}) {
    return GoogleFonts.poppins(
        fontSize: SizeConfig.textAdjusted(fontSize),
        height: lineHeight,
        color: color);
  }

  static TextStyle mediumText(
      {double fontSize = 1.7, double lineHeight = 1.4, required Color color}) {
    return GoogleFonts.poppins(
        height: lineHeight,
        fontWeight: FontWeight.w600,
        fontSize: SizeConfig.textAdjusted(fontSize),
        color: color);
  }

  static TextStyle boldText(
      {double fontSize = 1.7, double lineHeight = 1.4, required Color color}) {
    return GoogleFonts.poppins(
        height: lineHeight,
        fontWeight: FontWeight.bold,
        fontSize: SizeConfig.textAdjusted(fontSize),
        color: color);
  }
}
