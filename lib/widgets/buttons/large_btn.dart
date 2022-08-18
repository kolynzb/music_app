import 'package:flutter/cupertino.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/widgets/text/small_text.dart';

class LargeBtn extends StatelessWidget {
  Color? bgColor;
  final String text;
  double? height;
  double? width;

  LargeBtn({
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
        color: AppColors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: SmallText(text: text),
    );
  }
}
