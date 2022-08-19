import 'package:flutter/material.dart';

import 'package:music_app/constants/colors.dart';
import 'package:music_app/widgets/buttons/gm_btn.dart';
import 'package:music_app/widgets/buttons/gradient_btn.dart';
import 'package:music_app/widgets/text/big_text.dart';
import 'package:music_app/widgets/text/small_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [AppColors.pink, Colors.black, AppColors.blue],
            // stops: [0.1, 0.4, 0.6],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 150,
              // width: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo_white.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Flexible(
              child: BigText(
                text: 'Listen.',
                size: 30,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            GlassmorphicBtn(text: "Login"),
            const SizedBox(
              height: 18,
            ),
            GradientBtn(text: "Create An Account"),
            const SizedBox(
              height: 18,
            ),
            SmallText(
              text: "or connect via social media",
              color: Colors.white,
              weight: FontWeight.w600,
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.ac_unit, size: 30, color: Colors.white),
                Icon(Icons.ac_unit, size: 30, color: Colors.white),
                Icon(Icons.ac_unit, size: 30, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
