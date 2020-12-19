import 'package:flutter/material.dart';

class NewChat extends StatefulWidget {
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text('ffff'),
              ),

              //BOTTOM AREA
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBar(
                      title: Center(
                          child: Text("New Messages",
                              style: TextStyle(color: Colors.white))),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 10),
                          Text('TO:', style: TextStyle(fontSize: 20)),
                          SizedBox(width: 10),
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Type a name or multiple names..",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sujjested',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey[500],
                              )),
                        ],
                      ),
                    ),
                    Material(
                      child: SizedBox(
                          height: size.height / 6,
                          child: Card(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: AspectRatio(
                                  aspectRatio: 3 / 4,
                                  child: Image(
                                    image: AssetImage('assets/one.jpg'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 4),
                                          child: Text(
                                            'Sr. Database Managaer',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 4),
                                          child: Text(
                                            'Atlassian, New York',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[500],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 4),
                                          child: Text(
                                            '50 to 60 year',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[500],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: double.maxFinite,
                                color: Colors.grey,
                              ),
                            ],
                          ))),
                    ),
                    Material(
                      child: SizedBox(
                          height: size.height / 6,
                          child: Card(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: AspectRatio(
                                  aspectRatio: 3 / 4,
                                  child: Image(
                                    image: AssetImage('assets/one.jpg'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 4),
                                          child: Text(
                                            'Sr. Database Managaer',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 4),
                                          child: Text(
                                            'Atlassian, New York',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[500],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 4),
                                          child: Text(
                                            '50 to 60 year',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[500],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: double.maxFinite,
                                color: Colors.grey,
                              ),
                            ],
                          ))),
                    ),
                    SizedBox(height: 30),
                    Container(
                      color: Colors.blue,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 10),
                          Icon(Icons.emoji_emotions),
                          SizedBox(width: 10),
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Type Here...",
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.camera_enhance),
                            iconSize: 35.0,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.attachment),
                            iconSize: 35.0,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.double_arrow),
                            iconSize: 35.0,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //drawer: Drawer(),
    );
  }
}
