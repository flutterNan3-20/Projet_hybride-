import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screen/discussion.dart';
import '../screen/appel.dart';
import '../screen/camera.dart';
import '../screen/statut.dart';

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  TabController maTab;
  @override
  void initState() {
    maTab = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        elevation: 0.0,
        bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            controller: maTab,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'Discussion',
              ),
              Tab(
                text: 'Statuts',
              ),
              Tab(
                text: 'Appels',
              ),
            ]),
        title: Text(
          'Whatsapp',
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.facebook),
              color: Colors.white,
              onPressed: () {}),
          IconButton(
              icon: Icon(FontAwesomeIcons.facebookMessenger),
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, 'messenger');
              }),
          IconButton(
              icon: Icon(FontAwesomeIcons.telegram),
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, 'introtelegram');
              }),
        ],
      ),
      body: TabBarView(controller: maTab, children: [
        Camera(),
        Discussion(),
        Statut(),
        Appel(),
      ]),
    );
  }
}
