import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child:
                Text("Help & Support", style: TextStyle(color: Colors.white))),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text('ffff'),
            ),
            Container(
              child: Text('ffff'),
            ),
          ],
        ),
      ),
      //drawer: Drawer(),
    );
  }
}
