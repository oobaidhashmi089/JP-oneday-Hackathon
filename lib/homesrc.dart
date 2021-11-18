import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_02/Widgets/bottomnavigatorbar.dart';
import 'package:flutter_application_02/Widgets/listviewHomesrc.dart';
import 'package:flutter_application_02/Widgets/productsCategories.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Drawer.dart';

class Homesrc extends StatefulWidget {
  const Homesrc({Key? key}) : super(key: key);

  @override
  State<Homesrc> createState() => _HomesrcState();
}

class _HomesrcState extends State<Homesrc> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> isselected = [false, false, false, false];
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: bottombar(),
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 48.0),
            child: Text("HOME PAGE ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.pink)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(
                Icons.favorite,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.shopping_cart,
              ),
            )
          ],
        ),
        drawer: Mdrawer(),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 18.0, top: 18.0),
              child: Container(
                child: Row(children: [
                  const Text(
                    "Product",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                        fontSize: 18),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 28.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                productscat(),
              ]),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 18.0, top: 18.0),
              child: Container(
                child: Row(children: [
                  const Text(
                    "Product",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "list",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                        fontSize: 18),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            Listview(),
          ]),
        ),
      ),
    );
  }
}
