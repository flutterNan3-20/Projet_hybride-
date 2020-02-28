import 'package:flutter/material.dart';
import '../screen_code/appel_code.dart';
import '../providers/data.dart';

class Appel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: userData.length,
          itemBuilder: (context, i) {
            return AppelCode(
              img: userData[i]["image"],
              name: userData[i]["name"],
              date: userData[i]["data"],
            );
          }),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.add_call),
          onPressed: () {}),
    );
  }
}
