import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/widgets/buttons/gradient_btn.dart';
import 'package:music_app/widgets/text/big_text.dart';
import 'package:music_app/widgets/text/small_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
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
                BigText(
                  text: 'Login',
                  size: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  "Join Listen to hear the latest from people you follow",
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  textAlign: TextAlign.center,
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
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: CupertinoTextField(
                    prefix: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(Icons.person_outline_outlined),
                    ),
                    placeholder: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.only(left: 10, right: 10,top:20,bottom:20),
                //   child: TextFormField(
                //     keyboardType: TextInputType.visiblePassword,
                //     decoration:  InputDecoration(
                //       filled: true,
                //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                //       fillColor:  Colors.blue[100],
                //       hintText: "Password",
                //     ),
                //   ),
                // ),

                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
