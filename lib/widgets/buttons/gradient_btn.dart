import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/widgets/text/small_text.dart';

class GradientBtn extends StatelessWidget {
  Color? bgColor;
  final String text;
  double? height;
  double? width;
  Color? textColor;

  GradientBtn({
    Key? key,
    this.bgColor = const Color(0xFFccc7c5),
    required this.text,
    this.width = 100,
    this.height = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [AppColors.pink, AppColors.blue, AppColors.purple],
          // stops: [0.1, 0.4, 0.6],
        ),
        color: AppColors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: SmallText(
        text: text,
        color: Colors.white,
      ),
    );
  }
}
