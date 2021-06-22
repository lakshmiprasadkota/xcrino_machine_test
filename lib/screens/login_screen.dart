import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xcrino_machine_test/app_colors.dart';
import 'package:xcrino_machine_test/common/bottons.dart';
import 'package:xcrino_machine_test/common/textfield.dart';
import 'package:xcrino_machine_test/screens/home_screen.dart';
import 'package:xcrino_machine_test/screens/register_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = false;
  final numberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: 0,
            child: Image.asset(
              "assets/images/Curve.png",
              height: 100,
              color: AppColors.appColor,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 160,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/fff.png",
                  height: 50,
                  color: AppColors.appColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "YOUR LOGO",
                  style: TextStyle(
                      color: AppColors.appColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            color: AppColors.lightBlack,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Sign into your account",
                          style: TextStyle(
                              color: AppColors.lightBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 20,
                      ),
                      TextFieldWidget(
                          obscure: false,
                          textInputType: TextInputType.emailAddress,
                          textInputFormatter: <TextInputFormatter>[
                            FilteringTextInputFormatter.singleLineFormatter,
                            LengthLimitingTextInputFormatter(30),
                          ],
                          iconData: Icon(Icons.email_outlined),
                          label: " Enter E-mail"),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        keyboardType: TextInputType.name,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.singleLineFormatter,
                          LengthLimitingTextInputFormatter(20),
                        ],
                        obscureText: hidePassword,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            labelText: "Password",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    hidePassword = !hidePassword;
                                  });
                                },
                                icon: Icon(
                                  hidePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                )),
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: AppColors.darkGreyColor,
                              fontWeight: FontWeight.w600,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: AppColors.darkGreyColor,
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: AppColors.darkGreyColor,
                            ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text("Forget password",
                              style: TextStyle(
                                  color: AppColors.lightBlack,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400))),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HomeScreen()));
                          },
                          child: BottonWidget(
                            title: "Login",
                            bgColor: AppColors.appColor,
                            textColor: AppColors.whiteColor,
                          )),
                      Text("Or login Using Social Media",
                          style: TextStyle(
                              color: AppColors.lightBlack,
                              fontSize: 12,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/Facebook_Logo.png",
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            "assets/images/download.png",
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            "assets/images/color.png",
                            height: 40,
                            width: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: RichText(
                    text: TextSpan(
                        text: "Don’t have an account? ",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        children: [
                      TextSpan(
                        text: "Register here",
                        style: TextStyle(
                            color: AppColors.appColor,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      )
                    ])),
              ),
            ),
          )
        ],
      ),
    );
  }
}
