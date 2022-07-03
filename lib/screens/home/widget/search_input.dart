import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final tagsList = ['Health', 'Business', 'Education'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 30),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    prefixIcon: Container(
                        padding: EdgeInsets.all(15),
                        child:
                            Image.asset('assets/icons/search.png', width: 20)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/icons/filter.png', width: 25),
              )
            ],
          ),
          Row(
            children: tagsList
                .map((e) => Container(
                      margin: EdgeInsets.only(top: 30, right: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff7f7f7)),
                      child: Text(
                        e,
                        style: TextStyle(color: Colors.black),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
