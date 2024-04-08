import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  AppText(this.text,
      {this.fontSize,
      this.color,
      this.maxLines,
      this.textAlign,
      this.textOverflow,
      this.fontWeight,
      super.key});
  String text;
  int? maxLines;
  TextAlign? textAlign;
  Color? color;

  double? fontSize;
  TextOverflow? textOverflow;
  FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
          fontSize: fontSize, color: color, fontWeight: fontWeight),
    );
  }
}
