import 'package:flutter/material.dart';
import 'package:mentorapp/models/mentors.dart';

class AddCart extends StatelessWidget {
  final Mentors mentors;
  AddCart(this.mentors);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                  elevation: 0,
                  primary:Colors.grey.withOpacity(0.2),
                ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Register a trial lesson',style: TextStyle(fontSize: 20),),
                    SizedBox(width: 10),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
