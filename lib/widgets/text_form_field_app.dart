import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldApp extends StatelessWidget {
  final String label;
  final Function onChanged;
  final TextEditingController _controller = TextEditingController();

  TextFormFieldApp({
    Key? key,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      onChanged: (text) => onChanged(text),
      decoration: _textFieldStyle,
    );
  }

  InputDecoration get _textFieldStyle {
    return InputDecoration(
      fillColor: Colors.white,
      filled: true,
      labelStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      hintText: label,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 16,
      ),
    );
  }
}
