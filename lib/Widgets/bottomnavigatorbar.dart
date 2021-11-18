import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottombar() {
  return Container(
    width: 100,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 38.0),
          child: Icon(
            Icons.home,
            color: Colors.pink,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 120.0),
          child: Icon(
            Icons.search,
            color: Colors.pink,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Icon(
            Icons.person,
            color: Colors.pink,
          ),
        )
      ],
    ),
  );
}
