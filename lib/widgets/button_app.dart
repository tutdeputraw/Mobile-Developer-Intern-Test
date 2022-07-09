import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_mobile_developer_intern_test/themes/color_themes.dart';

class ButtonApp extends StatelessWidget {
  final String text;
  final Function onPressed;

  const ButtonApp({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _buttonStyle,
      onPressed: () => onPressed(),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  ButtonStyle get _buttonStyle {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      primary: ColorThemes.BUTTON_COLOR,
    );
  }
}
