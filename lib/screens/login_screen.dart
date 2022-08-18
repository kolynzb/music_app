import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/constants/dimension.dart';
import 'package:music_app/widgets/text/big_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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

          ],
        ),
      ),
    );
    
  }
}
