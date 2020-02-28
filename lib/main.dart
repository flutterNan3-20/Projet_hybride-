import 'package:flutter/material.dart';
import 'telegram/widget/telegram.dart';
import 'telegram/widget/intro.dart';

import 'messenger/widget/nav.dart';
import 'whatsapp/widget/message.dart';
import 'whatsapp/widget/intro.dart';

import 'whatsapp/widget/whatsapp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fusion Hybride',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Intro(),
      routes: {
        'whatsapp': (context) => Whatsapp(),
        'message': (context) => Message(),
        'messenger': (context) => Nav(),
        'introtelegram': (context) => IntroTelegram(),
        'telegram':(context)=>Telegram(),
      },
    );
  }
}
