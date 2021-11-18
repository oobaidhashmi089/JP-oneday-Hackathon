import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget productscat() {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfitvXN7AEkb6GAKBK7FEcOv9q77gpi1_3tw&usqp=CAU"),
              radius: 60.0,
              backgroundColor: Colors.black,
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15.0,
                  child: Text(
                    "\$${7.9}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 48.0,
      ),
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfitvXN7AEkb6GAKBK7FEcOv9q77gpi1_3tw&usqp=CAU"),
              radius: 60.0,
              backgroundColor: Colors.black,
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15.0,
                  child: Text(
                    "\$${7.9}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfitvXN7AEkb6GAKBK7FEcOv9q77gpi1_3tw&usqp=CAU"),
              radius: 60.0,
              backgroundColor: Colors.black,
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15.0,
                  child: Text(
                    "\$${7.9}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          child: Stack(
            children: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfitvXN7AEkb6GAKBK7FEcOv9q77gpi1_3tw&usqp=CAU"),
                radius: 60.0,
                backgroundColor: Colors.black,
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.0,
                    child: Text(
                      "\$${7.9}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
