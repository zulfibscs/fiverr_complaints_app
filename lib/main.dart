import 'package:fiverr_complaint_app/Screens/myHomeScreen.dart';
import 'package:fiverr_complaint_app/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 1,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w300,fontFamily: 'NunitoSans'))

        , fontFamily: 'ProximaNova',
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen()
    );
  }
}