import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screen/discussion.dart';
import '../screen/contact.dart';
import '../screen/decouverte.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  List viewList = [
    Discussion(),
    Contact(),
    Decouverte(),
  ];
  int pageIndex = 0;
  void onTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewList.elementAt(
        pageIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 5.0,
          currentIndex: pageIndex,
          onTap: onTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text("Discussions"),
              icon: Icon(FontAwesomeIcons.solidComment),
            ),
            BottomNavigationBarItem(
              title: Text("Contacts"),
              icon: Icon(FontAwesomeIcons.peopleCarry),
            ),
            BottomNavigationBarItem(
              title: Text("Découverte"),
              icon: Icon(FontAwesomeIcons.compass),
            ),
          ]),
    );
  }
}
