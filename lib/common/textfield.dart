import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(

      {required this.textInputType,
        required this.obscure ,
      required this.textInputFormatter,
      required this.iconData,
      required this.label});

  String label;
  Icon iconData;
  bool obscure ;
 List <TextInputFormatter> textInputFormatter;
  TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(

        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
        ),
        keyboardType: textInputType,
        inputFormatters: textInputFormatter,
        obscureText: obscure,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          isDense: true,
            labelText: label,
            suffixIcon: iconData,
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
    );
  }
}
