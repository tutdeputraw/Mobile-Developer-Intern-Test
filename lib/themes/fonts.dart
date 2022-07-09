// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_mobile_developer_intern_test/themes/color_themes.dart';

class FontApp {
  static final TextStyle APP_BAR = GoogleFonts.poppins(
    color: ColorThemes.BLACK_TEXT_COLOR,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle CARD_TITLE = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: ColorThemes.BLACK_TEXT_COLOR,
  );

  static final TextStyle CARD_SUBTITLE = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: ColorThemes.BLACK_TEXT_2_COLOR,
  );
}
