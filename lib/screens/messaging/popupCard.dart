import 'package:flutter/material.dart';

class PopupCard extends StatefulWidget {
  @override
  _PopupCardState createState() => _PopupCardState();
}

class _PopupCardState extends State<PopupCard> {

  Widget cancelButton = FlatButton(
    child: Text("CANCEL"),
    onPressed:  () {},
  );
  Widget continueButton = FlatButton(
    child: Text("REPORT"),
    onPressed:  () {},
  );
    Future<String> displayDialog() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Report This Contact?"),
          content:Container(
               height: 100.0,
                width: 400.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [  Row(
                   mainAxisAlignment:  MainAxisAlignment.start,
                children: [
                 Icon(Icons.check),
                 SizedBox(width:10),
                 Flexible(child: Text("Report User and delete this chat's messages"))
              ],),
        
         
         TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                     hintText: 'Add Your Reason In Detail'),
                ),
            ],),
          ),
          actions: <Widget>[
            cancelButton,
           continueButton,
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Card(
             elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                            IconButton(
                                icon: Icon(Icons.delete),
                                iconSize: 35.0,
                                onPressed: () {},
                              ),

                                 IconButton(
                                icon: Icon(Icons.volume_off),
                                iconSize: 35.0,
                                onPressed: () {},
                              ),

                                  IconButton(
                                icon: Icon(Icons.save),
                                iconSize: 35.0,
                                onPressed: () {},
                              ),

                                  IconButton(
                                icon: Icon(Icons.emoji_flags),
                                iconSize: 35.0,
                                onPressed: () {
                                      displayDialog();
                                },
                              ),
                              
            ],)
          ),
        ),
      )

      //drawer: Drawer(),
    );
  }
}
