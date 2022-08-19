import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/widgets/buttons/gradient_btn.dart';
import 'package:music_app/widgets/text/big_text.dart';
import 'package:music_app/widgets/text/small_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [AppColors.pink, Colors.black, AppColors.blue],
            stops: [0.1, 0.4, 0.6],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 90,
                ),
                Flexible(
                  child: BigText(
                    text: 'Log into Account',
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                SmallText(
                  text: "Join Listen to hear the latest from people you follow",
                  color: Colors.white,
                  weight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 60,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    hintText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    // ignore: avoid_print
                    Checkbox(
                        value: false, onChanged: (value) => print("hello")),
                    SmallText(
                      text: "I agree to all Terms of Service",
                      color: Colors.white,
                      weight: FontWeight.w600,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GradientBtn(text: "Login"),
                const SizedBox(
                  height: 20,
                ),
                SmallText(
                  text: "or connect via social media",
                  color: Colors.white,
                  weight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 110,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Icon(Ionicons.logo_twitter,
                          size: 25, color: Colors.white),
                      Icon(Ionicons.logo_google, size: 25, color: Colors.white),
                      Icon(Ionicons.logo_facebook,
                          size: 25, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
