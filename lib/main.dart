

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mentorapp/screens/home/home.dart';
// import 'package:mentorapp/screens/home/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mentorapp/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: 'Mentor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Color(0xFFFAFAFA),
          primaryColor: Color(0xFFFFBD00),
          accentColor: Color(0xFFFFEBC7)),
      home:SplashScreen(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (ctx) =>  HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/detail3.png"),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitSquareCircle(
              color: Colors.orangeAccent,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
