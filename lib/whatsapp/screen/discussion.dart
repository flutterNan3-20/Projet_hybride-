import 'package:flutter/material.dart';
import '../screen_code/disc_code.dart';
import '../providers/data.dart';

class Discussion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: userData.length,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'message', arguments: {
                  "nom": userData[i]["name"],
                  "photo": userData[i]["image"],
                  "message": userData[i]["msg"]
                });
              },
              child: DiscCode(
                img: userData[i]["image"],
                name: userData[i]["name"],
                message: userData[i]["msg"],
                date: userData[i]["data"],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.comment),
          onPressed: () {}),
    );
  }
}
