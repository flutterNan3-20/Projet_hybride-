import 'package:flutter/material.dart';

class DiscCode extends StatelessWidget {
  final String img;
  final String name;
  final String message;
  final String date;

  DiscCode({this.img, this.name, this.message, this.date});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 35,
                    backgroundImage: AssetImage(img),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.check,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 133,
                              child: Text(
                                message,
                                style: TextStyle(color: Colors.black54),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(date),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child: Text('4'),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 95, right: 10),
          child: Divider(),
        ),
      ],
    );
  }
}
