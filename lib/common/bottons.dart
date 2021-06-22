import 'package:flutter/cupertino.dart';

import '../app_colors.dart';

class BottonWidget extends StatelessWidget {
  BottonWidget({required this.title , required this.bgColor  , required this.textColor});
  String title;
  Color bgColor;
  Color textColor ;

  Widget build(BuildContext context) {
    return    Container(

      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Center(child: Text(title , style:TextStyle(color: textColor, fontWeight: FontWeight.w600),),),
    );
  }
}
