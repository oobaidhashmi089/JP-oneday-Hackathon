import 'package:flutter/material.dart';

class Products {
  final int id;
  final String name;
  final String image;
  final String des;
  final String tag;
  final String price;

  const Products(
      {required this.id,
      required this.name,
      required this.des,
      required this.image,
      required this.price,
      required this.tag});
}

final List<Products> data = [
  Products(
      id: 1,
      name: "Buy Men's Shirt at Amazon.PK",
      des: "des",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcdazO-A2GATjul_WcjGUyqN5jKL6E8Fqy5w&usqp=CAU",
      price: "\$${99.0}",
      tag: "10% off"),
  Products(
      id: 2,
      name: "CLUB BYRON Pants Men",
      des: "des",
      image:
          "https://cdn-mdb.head.com/CDN3/GH/811469_RDDB/1/400x400/club-byron-pants-men-red-dark-blue.jpg",
      price: "\$${19.0}",
      tag: "70% off"),
  Products(
      id: 3,
      name: "Men Stylish Running Sports Shoes For Men(Black)",
      des: "des",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrWj35yeWk_usb0bnbLs43eK37YENNDRNDSg&usqp=CAU",
      price: "\$${59.0}",
      tag: "40% off"),
  Products(
      id: 4,
      name: "MEN'S HYPER C.XTREEM, SCARLET\n(BLACK)",
      des: "des",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6pdCFWtX6acLR-x-5LSkSh3xzWwEG1fcZuQ&usqp=CAU",
      price: "\$${89.0}",
      tag: "20% off"),
];
