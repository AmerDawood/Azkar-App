import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final Color backgroundcolor;
  final Color textColor;
  final int flex;
  final BorderRadius borderRadius;

  AppButton({
   required this.onPressed,
   required this.text,
    this.backgroundcolor=Colors.cyan,
    this.textColor=Colors.white,
    this.borderRadius=BorderRadius.zero,
    this.flex =1,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,

      child: ElevatedButton(


        style: ElevatedButton.styleFrom(
          primary: backgroundcolor,

          shape: RoundedRectangleBorder(
            borderRadius:borderRadius,

          )
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,


            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'cairo',
          ),
        ),
      ),
    );
  }
}
