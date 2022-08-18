// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  // TextOverflow overflow;

  BigText({
    Key? key,
    this.color = const Color(0xffffffff),
    required this.text,
    this.size = 20,
    // this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      // overflow: overflow,
      maxLines: 1,
      style: GoogleFonts.nunito(
        textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: size,
        ),
      ),
    );
  }
}
