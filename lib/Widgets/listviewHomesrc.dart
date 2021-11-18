// ignore: file_names
// ignore: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_02/cartsrc.dart';
import 'package:flutter_application_02/models.dart/cartmodel.dart';
import '../models.dart/productdesDATA.dart';
import '../cartsrc.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    void add() {
      lst.add(data);
    }

    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.pink,
                        blurRadius: 40.0, // soften the shadow
                        spreadRadius: 3.0, //extend the shadow
                        offset: Offset(
                          15.0, // Move to right 10  horizontally
                          15.0,
                        ) // Move to
                        )
                  ]),
              height: 350,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                        ),
                      )),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 250,
                          child: Image.network(
                            data[index].image,
                          ))),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10.0)),
                        height: 20.0,
                        width: 80.0,
                        child: Center(child: Text(data[index].tag))),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 18.0, left: 30, bottom: 4.0),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                add();
                              });
                            },
                            child: Container(
                                child:
                                    const Icon(Icons.shopping_cart_outlined))),
                      )),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          data[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      )),
                ],
              ),
            ),
          );
        });
  }
}
