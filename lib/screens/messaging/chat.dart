import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child:
                Text("Chat & Support", style: TextStyle(color: Colors.white))),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Text('ffff'),
              ),
            ),
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
      //drawer: Drawer(),
    );
  }
}

// Row(
//                   children: [
//                     TextField(
//                       decoration: InputDecoration(
//                         labelText: "Type Here...",
//                       ),
//                     ),
//                   ],
//                 )
