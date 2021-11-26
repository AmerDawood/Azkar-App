import 'package:azkar_app/screens/about_app.dart';
import 'package:azkar_app/screens/launch_screen.dart';
import 'package:azkar_app/screens/main_screen.dart';
import 'package:azkar_app/screens/page_view_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen':(context)=>LaunchScreen(),
        '/main_screen':(context)=>MainScreen(),
        '/about_app':(context)=>AboutApp(),
        '/page_view_screen':(context)=>PageViewScreen(),
      },



    );
  }
}
