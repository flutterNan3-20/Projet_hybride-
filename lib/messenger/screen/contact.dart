import 'package:flutter/material.dart';
import '../widget/appBarM.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarM('Contacts', Icons.contacts, Icons.person_add),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    'STORIES (8)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 40,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    'ACTIFS (0)',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3 / 4, crossAxisCount: 2),
                itemCount: 8,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('images/autre.jpg'),
                              fit: BoxFit.cover)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: Colors.white,
                            ),
                            Text('Davy Aymard')
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
