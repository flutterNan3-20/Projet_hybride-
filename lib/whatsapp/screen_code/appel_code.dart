import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppelCode extends StatelessWidget {
  final String img;
  final String name;
  final String date;

  AppelCode({this.img, this.name, this.date});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            maxRadius: 30,
            backgroundImage: AssetImage(img),
          ),
          title: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.call_received,
                color: Colors.red,
              ),
              Text(date),
            ],
          ),
          trailing: Icon(
            FontAwesomeIcons.video,
            color: Color(0xff075e54),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 80, right: 10),
          child: Divider(),
        ),
      ],
    );
  }
}
