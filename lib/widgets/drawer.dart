// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg";
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("faizan ahmed"),
              accountEmail: Text("faizanmalikahmed@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageurl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email Me",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
