import 'package:flutter/material.dart';

class IntroTelegram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('images/9.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  elevation: 7.7,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Icon(
                      Icons.send,
                      size: 35,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Telegram',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Telegram Hybride',
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? bouton(context, 50)
                    : bouton(context, 180),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Bienvenue sur Telegram',
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget bouton(BuildContext context, double marge) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'telegram');
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: marge),
        alignment: Alignment.center,
        height: 45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(50)),
        child: Text(
          'Commencer',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5),
        ),
      ),
    );
  }
}
