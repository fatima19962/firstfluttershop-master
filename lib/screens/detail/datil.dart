import 'package:flutter/material.dart';
import 'package:mentorapp/models/mentors.dart';
import 'package:mentorapp/screens/detail/widget/add_cart.dart';
import 'package:mentorapp/screens/detail/widget/mentors_info.dart';

class DatailPage extends StatelessWidget {
  final Mentors mentors;
  DatailPage(this.mentors);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/detail2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
                top: 320,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MentorsInfo(mentors),
                      // AddCart(mentors),
                    ],
                  ),
                )),


          ],
        ),
      ),
    );
  }
}
