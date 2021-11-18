import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_application_02/cartsrc.dart';

class Mdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(0),
          child: ListView(
            children: [
              Container(
                height: 200,
                child: DrawerHeader(
                    child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.white),
                    margin: EdgeInsets.zero,
                    accountName: Text(
                      "Syed Obaid Hashmi",
                      style: TextStyle(color: Color(0xFF000000)),
                    ),
                    accountEmail: Text("Syedhashmi089@gmail.com",
                        style: TextStyle(color: Color(0xFF000000))),
                    currentAccountPicture: Padding(
                      padding: const EdgeInsets.all(0),
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://avatars.githubusercontent.com/u/79754399?v=4")),
                    ),
                  ),
                )),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.pink,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.pink),
                  textScaleFactor: 1.3,
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.purchased_circle,
                  color: Colors.pink,
                ),
                title: Text(
                  "Products",
                  style: TextStyle(color: Colors.pink),
                  textScaleFactor: 1.3,
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.phone,
                  color: Colors.pink,
                ),
                title: Text(
                  "Phone",
                  style: TextStyle(color: Colors.pink),
                  textScaleFactor: 1.3,
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              ListTile(
                leading: InkWell(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart())),
                  child: Icon(
                    CupertinoIcons.shopping_cart,
                    color: Colors.pink,
                  ),
                ),
                title: InkWell(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart())),
                  child: Text(
                    "Cart",
                    style: TextStyle(color: Colors.pink),
                    textScaleFactor: 1.3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
