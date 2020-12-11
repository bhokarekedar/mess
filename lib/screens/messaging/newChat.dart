import 'package:flutter/material.dart';

class NewChat extends StatefulWidget {
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
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
                    SizedBox(height: 15),
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
