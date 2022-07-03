import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final String title;
  CategoriesList(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25,vertical:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22
          ),),
          Row(
            children: [
              Text('See All',
              style: TextStyle(
                color:Color(0xffb9b8b7),
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
              ),
              Container(
              )
            ],
          )
        ],
      ),
    );
  }
}
