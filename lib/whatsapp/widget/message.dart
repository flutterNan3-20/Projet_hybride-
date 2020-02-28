import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, Object> args =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(args["photo"]),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 80,
                    child: Text(
                      args["nom"],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "En ligne",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.video, color: Colors.white),
              iconSize: 18,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.call, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                image: AssetImage(args["photo"]), fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffd8e2eb),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "25 fevrier",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(right: 5, left: 5),
                        alignment: Alignment.center,
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color(0xfffcf9c5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "les messages envoyées dans cette discussion et les appels sont desornais protégés avec le chiffrement de bout en bout . Appyer pour plus d'informations.",
                          style: TextStyle(color: Colors.brown),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          args["photo"],
                        ),
                      ),
                      title: (Container(
                        padding: EdgeInsets.only(top: 5),
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 270,
                                  child: Text(
                                    "Ceci est un test essayons d'écrire quelque chose à l'intérieur pour voir. ",
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  child: Text("14h40"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      title: (Container(
                        padding: EdgeInsets.only(top: 5),
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color(0xffe2ffc6),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 270,
                                  child: Text(
                                      " Fhum... mais à part ca tu fais quoi de bon ?"),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  child: Text("14h42"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                      trailing: CircleAvatar(
                        backgroundImage: AssetImage(
                          "images/1.jpg",
                        ),
                      ),
                    ),
                    /* Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("images/font.jpg",),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        width: 300,
                        decoration: BoxDecoration(color: Colors.white, borderRadius:BorderRadius.circular(10)),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:250,

                                    child: Text(" Le lorem ipsum est, en imprimerie, une Le lorem ipsum est, en imprimerie, une Le lorem ipsum est, en imprimerie, une Le lorem ipsum est, en imprimerie, une "),

                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(


                                  child: Text("14h40"),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),*/

                    /*Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(top: 5),
                        width: 300,
                        decoration: BoxDecoration(color: Colors.white, borderRadius:BorderRadius.circular(10)),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:250,

                                  child: Text(" Le lorem ipsum est, en imprimerie, une Le lorem ipsum est, en imprimerie, une Le lorem ipsum est, en imprimerie, une Le lorem ipsum est, en imprimerie, une "),

                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(


                                  child: Text("14h40"),

                                ),
                              ],
                            ),

                          ],

                        ),

                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("images/font.jpg",),
                      ),
                    ],
                  ),*/
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mood,
                              color: Colors.grey,
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.attachment,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.camera_alt,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Taper message",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      maxRadius: 27,
                      backgroundColor: Color(0xff075e54),
                      child: IconButton(
                        icon: Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
