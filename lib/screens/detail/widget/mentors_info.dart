import 'package:flutter/material.dart';
import 'package:mentorapp/models/mentors.dart';
import 'package:mentorapp/screens/detail/widget/add_cart.dart';

class MentorsInfo extends StatelessWidget {
  final Mentors mentors;
  MentorsInfo(this.mentors);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${mentors.title}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${mentors.subtitle}',
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                ],
              ),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s,',
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.9), height: 1.5)),
            ])),
      
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.2), width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Text(
                            '4.8',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.2), width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.monetization_on,
                          color: Colors.black,
                        ),
                        Text('\$ 23/1hr ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black))
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      // color: Color(0xff7f7f7),
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.2), width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.play_circle_fill,
                              color: Colors.black,
                            ),
                            Text('8 hr',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      
            //  Row(),
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 0,
                            primary: Colors.grey.withOpacity(0.2),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Register a trial lesson',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.black),
                                    
                              ),
                              SizedBox(width: 10),
                            ],
                          )),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      // color: Color(0xff7f7f7),
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Course Datail', style: TextStyle(color: Colors.black)),
            ])),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.9), height: 1.5)),
            ])),
          ],
        ),
      ),
    );
  }
}
