import 'package:flutter/material.dart';
import '../widget/appBarM.dart';
import '../../whatsapp/providers/data.dart';

class Discussion extends StatelessWidget {
  List<Widget> storyList() {
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
                Container(
                    width: 150,
                    child: Text(
                      item["msg"],
                      overflow: TextOverflow.ellipsis,
                    )),
                Text(item["data"]),
              ],
            ),
            trailing: Icon(
              Icons.check_circle,
              size: 15,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarM('Discussion', Icons.camera_alt, Icons.edit),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, left: 8.0, right: 8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(100)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'Rechercher'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, i) {
                        return Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(51, 51, 51, 1),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: (i % 2 == 0)
                                              ? Border.all(
                                                  width: 0,
                                                  color: Color.fromRGBO(
                                                      0, 132, 255, 1))
                                              : Border.all(
                                                  width: 2,
                                                  color: Color.fromRGBO(
                                                      0, 132, 255, 1))),
                                      child: ClipOval(
                                        child: (i == 0)
                                            ? IconButton(
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 30,
                                                ),
                                                color: Color.fromRGBO(
                                                    195, 195, 195, 1),
                                                onPressed: () {})
                                            : Image.asset(
                                                'images/autre.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                          width: 18,
                                          height: 18,
                                          decoration: (i == 0)
                                              ? BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100))
                                              : BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100))),
                                    ),
                                  ],
                                ),
                              ),
                              Text('Davy')
                            ],
                          ),
                        );
                      }),
                ),
              ),
              ...storyList(),
            ],
          ),
        ),
      ),
    );
  }
}
