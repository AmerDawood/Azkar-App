import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4,),(){
      Navigator.pushReplacementNamed(context, '/page_view_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueGrey,
              Colors.cyan,
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.topEnd,
          ),
        ),
        child:Center(
          child: Text(
            'أذكار',
            style: TextStyle(
              fontFamily: 'cairo',
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ),
      );

  }
}
