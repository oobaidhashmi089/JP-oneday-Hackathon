import 'package:flutter/material.dart';
import 'package:flutter_application_02/models.dart/cartmodel.dart';

import 'models.dart/productdesDATA.dart';
import '../listviewHomesrc.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _Cart createState() => _Cart();
}

class _Cart extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: lst.length,
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
                                    child: Text(data[index].price,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)))),
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
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
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
                                      onTap: () {},
                                      child: Container(
                                          child: const Icon(Icons.delete))),
                                )),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    data[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    );
                  })
            ])));
  }
}
