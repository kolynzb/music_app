import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:music_app/widgets/text/small_text.dart';

class GlassmorphicBtn extends StatelessWidget {
  Color? bgColor;
  final String text;
  double? height;
  double? width;

  GlassmorphicBtn({
    Key? key,
    this.bgColor = const Color(0xFFccc7c5),
    required this.text,
    this.width = 300,
    this.height = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: width!,
      height: height!,
      borderRadius: 20,
      blur: 20,
      linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFFffffff).withOpacity(0.1),
            const Color(0xFFFFFFFF).withOpacity(0.05),
          ],
          stops: const [
            0.1,
            1,
          ]),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFFffffff).withOpacity(0.5),
          const Color((0xFFFFFFFF)).withOpacity(0.5),
        ],
      ),
      border: 1,
      child: Center(
        child: SmallText(
          text: text,
          size: 18,
          color: Colors.white,
          weight: FontWeight.w600,
        ),
      ),
    );
  }
}
