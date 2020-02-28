import 'package:flutter/material.dart';

Widget appbarM(String title, IconData icon1, IconData icon2) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: Padding(
      padding: EdgeInsets.all(5.0),
      child: CircleAvatar(
        backgroundImage: AssetImage('images/1.jpg'),
      ),
    ),
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.black12,
          child: IconButton(
            color: Colors.black,
            icon: Icon(icon1),
            onPressed: () {},
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.black12,
          child: IconButton(
            color: Colors.black,
            icon: Icon(icon2),
            onPressed: () {},
          ),
        ),
      )
    ],
  );
}
