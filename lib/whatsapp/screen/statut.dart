import 'package:flutter/material.dart';
import '../providers/data.dart';

class Statut extends StatelessWidget {
  List<Widget> statutList() {
    return userData
        .map(
          (item) => ListTile(
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundImage: AssetImage(item["image"]),
            ),
            title: Text(
              item["name"],
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: <Widget>[
                Text(item["data"]),
              ],
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                backgroundImage: AssetImage("images/1.jpg"),
              ),
              title: Text(
                'Mon statut',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: <Widget>[
                  Text('Aujourd\'hui à 10:15'),
                ],
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Color(0xff075e54),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 4),
              color: Colors.black12.withOpacity(0.10),
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: Text('Récentes mises à jour'),
            ),
            ...statutList(),

            // for (var item in userData)
            //   ListTile(
            //     leading: CircleAvatar(
            //       maxRadius: 30,
            //       backgroundImage: AssetImage(item["image"]),
            //     ),
            //     title: Text(
            //       item["name"],
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     subtitle: Row(
            //       children: <Widget>[
            //         Text(item["data"]),
            //       ],
            //     ),
            //   ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
              mini: true,
              backgroundColor: Colors.white54,
              child: Icon(
                Icons.edit,
                color: Color(0xff075e54),
              ),
              onPressed: () {}),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              backgroundColor: Colors.green,
              child: Icon(Icons.camera_alt),
              onPressed: () {}),
        ],
      ),
    );
  }
}
