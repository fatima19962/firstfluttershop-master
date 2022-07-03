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
              MaterialPageRoute(builder: (context) => DatailPage(mentors))
              );
        },
        child: Card(
          // elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(1),
                      // margin give to pic

                      height: 250,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(mentors.imageUrl),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      right: 8,
                      top: 150,
                      // bottom: -50,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff302d2c),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        constraints:
                            BoxConstraints(maxWidth: 300, maxHeight: 200),
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 12,
                      right: 20,
                      child: Text(
                        mentors.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                            height: 1.5),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      left: 12,
                      right: 20,
                      child: Text(
                        mentors.subtitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffbcbbbb),
                            fontSize: 15,
                            height: 1.5),
                      ),
                    ),
                    Positioned(
                      top: 210,
                      left: 12,
                      right: 50,
                      child: Text(
                        mentors.price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                            height: 1.5),
                      ),
                    ),
                    Positioned(
                        top: 210,
                        right: 20,
                        bottom: 20,
                        child: Container(
                            child: Icon(
                          Icons.favorite,
                          color: Colors.black,
                          size: 20,
                        )))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
