import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screen/discussion.dart';

class Telegram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), iconSize: 25, onPressed: () {})
        ],
      ),
      body: DiscussionTelegram(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.5),
                          child: Text(
                            'DK',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                            icon: Icon(FontAwesomeIcons.solidMoon),
                            color: Colors.white,
                            onPressed: () {}),
                      ],
                    ),
                    Text(
                      'Davy Aymard Kouassi',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '+225 78 34 27 09',
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                        IconButton(
                            icon: Icon(Icons.arrow_drop_down),
                            color: Colors.white,
                            onPressed: () {})
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.group), onPressed: () {}),
              title: Text(
                'New Group',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.lock), onPressed: () {}),
              title: Text(
                'New Secret Chat',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.mic), onPressed: () {}),
              title: Text(
                'New Channel',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.person), onPressed: () {}),
              title: Text(
                'Contacts',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.call), onPressed: () {}),
              title: Text(
                'Calls',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(Icons.bookmark_border), onPressed: () {}),
              title: Text(
                'Saved Message',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
              title: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading: IconButton(icon: Icon(Icons.add_call), onPressed: () {}),
              title: Text(
                'Invite Friends',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading:
                  IconButton(icon: Icon(Icons.help_outline), onPressed: () {}),
              title: Text(
                'Telegram FAQ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          onPressed: () {}),
    );
  }
}
