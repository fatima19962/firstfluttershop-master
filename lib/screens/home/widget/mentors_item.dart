import 'package:flutter/material.dart';
import 'package:mentorapp/models/mentors.dart';
import 'package:mentorapp/screens/detail/datil.dart';

class MentorItem extends StatelessWidget {
  final Mentors mentors;
  MentorItem(this.mentors);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DatailPage(mentors)));
        },
        child: Stack(children: [
          Container(
            alignment: Alignment.center,
            height: 250,
            width: 160,
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // color:context.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(mentors.imageUrl))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              width: 160,
              margin: EdgeInsets.only(left: 5, right: 10, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff302d2c),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mentors.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15,
                              height: 1.5),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          mentors.subtitle,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffbcbbbb),
                              fontSize: 15,
                              height: 1.5),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              mentors.price,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15,
                                  height: 1.5),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                child: Icon(
                              Icons.favorite,
                              color: Colors.black,
                              size: 20,
                            )),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
