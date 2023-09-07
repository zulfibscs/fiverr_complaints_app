import 'package:fiverr_complaint_app/Screens/dashboard_screen.dart';
import 'package:fiverr_complaint_app/Screens/myHomeScreen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
 void initState() {
    Future.delayed(Duration(seconds:3),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Place Your Logo',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 6,),
              Text('Tagline here',style: TextStyle(color: Colors.white), ),
              SizedBox(height: 6,),
              Container(
                child: Center(child: CircularProgressIndicator(color: Colors.white,backgroundColor: Colors.yellow,strokeWidth: 2)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
