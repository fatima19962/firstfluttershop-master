import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mentorapp/screens/home/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    startTime();
    // _controller = AnimationController(
    //   duration: Duration(seconds: 3),
    //   vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    // _controller.dispose();
  }

  // bool jet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
           width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,

            colors: [Color(0xFFFF800B),Color(0xFFCE1010),]
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Lottie.asset(
                'assets/lottie/flying-rocket.json',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "MentorApp",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            
            CircularProgressIndicator(
              valueColor:  AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
          ],
          
        

          // onTap: () {
          //   if (jet == false) {
          //     jet = true;
          //     _controller.forward();
          //   } else {
          //     jet = false;
          //     _controller.reverse();
          //   }
          // },
          // child: Lottie.asset('assets/lottie/flying-rocket.json',

          // controller: _controller
        ),
      ),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
  }
}
