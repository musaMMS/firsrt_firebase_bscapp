
import 'dart:async';
import 'package:firsrt_firebase_bscapp/screen/SingUp.dart';
import 'package:firsrt_firebase_bscapp/screen/login.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Timer to navigate to another screen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SinginScreen()),
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent, // Background color similar to the image
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Light bulb icon to resemble the logo in the image
              Icon(
                Icons.lightbulb_outline,
                size: 100,
                color: Colors.white,
              ),
              SizedBox(height: 20),
              // App title "Splashy"
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "B",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "C",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "S",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ]
              ),

              SizedBox(height: 50),
              // Loading indicator with dots (similar to the image)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DotWidget(),
                  SizedBox(width: 8),
                  DotWidget(),
                  SizedBox(width: 8),
                  DotWidget(),
                ],
              ),
            ]
        ),
      ),
    );
  }
}

// DotWidget for the animated dots
class DotWidget extends StatefulWidget {
  @override
  _DotWidgetState createState() => _DotWidgetState();
}

class _DotWidgetState extends State<DotWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
void _onTapMoved(){
  Get.to(()=>LoginScreen());

}