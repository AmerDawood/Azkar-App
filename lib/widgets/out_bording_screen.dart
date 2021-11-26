import 'package:flutter/material.dart';

class out_bording_screen extends StatelessWidget {
  final String titel;
  final String SubTitel;

  out_bording_screen({
   required this.titel,
   required this.SubTitel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [

        Text(


          titel,

          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(

          SubTitel,
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
