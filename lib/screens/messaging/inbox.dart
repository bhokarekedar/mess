import 'package:flutter/material.dart';
import 'package:flutter_app/screens/messaging/help.dart';
import 'package:flutter_app/screens/messaging/inboxClass.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
 
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

     Future<String> messageRequestDialog() {
     return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            height: 500,
            child: Scaffold(
      appBar: AppBar(
        title: Center(
              child:
                Text("Message Request Inbox", style: TextStyle(color: Colors.white))),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Column(children: [
                       SizedBox(height:20),
                    Text('Message Request',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(height:20),
                      FlatButton(
    child:  Text('Back To Main Inbox',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue)),
    onPressed:  () {},
  ),
                   ],),
                 ),

                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),
                    
                  ],)
                ),

              Container(
                child: Expanded(child: Center(child:  Text('No Pending Request For Now',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)))),
              ),
            ],
        ),
      ),
      //drawer: Drawer(),
    ),
          ),
        );
      },
    );
  }

      Future<String> displaySubApp() {
     return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Dialog(
          child: Padding(
          padding: const EdgeInsets.all(5),
            child:Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                onPressed: () {
                  messageRequestDialog();
                 },
                child: Text(
                  "Message Request",
                  ),
                ), 
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),


                  FlatButton(
                onPressed: () { 
                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Help()),
  );
                },
                child: Text(
                  "Help & Support",
                  ),
                ),        
              ],),
            )
        ),
        );
      },
    );
  }

   Future<String> newMessageDialog() {
     return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
          height:500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                          height: 100,
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
                          height: 100,
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
                  ],
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
        );
      },
    );
  }

 
 Future<String> displayIcon(index) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),

          child: Padding(
          padding: const EdgeInsets.all(5),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                            IconButton(
                                icon: Icon(Icons.delete),
                                iconSize: 35.0,
                                onPressed: () {
                                  setState(
    () { 
        inboxClass.removeAt(index); 
      
    }
    );
    Navigator.pop(context);

                                },
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
        );
      },
    );
  }

  List<InboxClass> inboxClass = [
    InboxClass(name: 'peter', details: 'gggg', time: '15 min'),
     InboxClass(name: 'parker', details: 'fg', time: '30 min'),
     InboxClass(name: 'fhfff', details: 'fhfffh', time: '40 min'),
  InboxClass(name: 'hfhf', details: 'hfh', time: '10 min'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
      onPressed: () {
       displaySubApp();
      },
    )
  ],
        title:
            Center(child: Text("Inbox", style: TextStyle(color: Colors.white))),
      ),
      body: ListView.builder(
          itemCount: inboxClass.length,
          itemBuilder: (context, index) => Column(children: [
         SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.fromLTRB(12,0,12,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(inboxClass[index].name),
                 Text(inboxClass[index].time),
              ],
              ),
            ),
              SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.fromLTRB(12,0,12,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(inboxClass[index].details),
                 IconButton(
                                icon: Icon(Icons.settings),
                                iconSize: 35.0,
                                onPressed: () {
                                  displayIcon(index);
                                },
                              ),
              ],
              ),
            ),
             SizedBox(height: 5),
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),
          ],),  
          ),

           floatingActionButton: FloatingActionButton(
      onPressed: () {
         newMessageDialog();
      },
    ),
             
    );
  }
}
