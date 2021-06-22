import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xcrino_machine_test/common/bottons.dart';
import 'package:xcrino_machine_test/screens/login_screen.dart';
import 'package:xcrino_machine_test/screens/register_screen.dart';
import '../app_colors.dart';

class OpenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 100),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.beginGradientColor,
            AppColors.endGradientColor,
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/fff.png",
              height: 70,
              color: AppColors.whiteColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "YOUR LOGO",
              style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 20),
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: BottonWidget(
                            title: "Login",
                            textColor: AppColors.appColor,
                            bgColor: AppColors.whiteColor,
                          ))),
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: BottonWidget(
                            title: "Register Here",
                            textColor: AppColors.appColor,
                            bgColor: AppColors.whiteColor,
                          ))),
                ],
              ),
            ),
            Text(
              " For Quick login use Touch ID",
              style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/fingerprint.png",
              color: Colors.white,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text("use touch Id",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                ))
          ],
        ),
      ),
    );
  }
}
