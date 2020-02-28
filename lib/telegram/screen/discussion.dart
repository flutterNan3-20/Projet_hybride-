import 'package:flutter/material.dart';
import '../screen_code/disc_code.dart';
import '../../whatsapp/providers/data.dart';

class DiscussionTelegram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userData.length,
        itemBuilder: (context, i) {
          return DiscCode(
            img: userData[i]["image"],
            name: userData[i]["name"],
            message: userData[i]["msg"],
            date: userData[i]["data"],
          );
        });
  }
}
