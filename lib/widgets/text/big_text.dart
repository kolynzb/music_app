import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/constants/dimension.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  // TextOverflow overflow;

  BigText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 0,
    // this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: overflow,
      maxLines: 1,
      style: GoogleFonts.nunito(
        textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: size == 0 ? Dimensions.font20 : size,
        ),
      ),
    );
  }
}
