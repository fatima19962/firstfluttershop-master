import 'package:flutter/material.dart';
import 'package:mentorapp/models/mentors.dart';
import 'package:mentorapp/screens/home/widget/categories_list.dart';
import 'package:mentorapp/screens/home/widget/mentors_item.dart';

class NewMentor extends StatelessWidget {
  final MentorList = Mentors.generateMentors();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoriesList('Top mentor'),
          Container(
            height: 280,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => MentorItem(MentorList[index]),
                separatorBuilder: (_, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: MentorList.length),
          )
        ],
      ),
    );
  }
}
