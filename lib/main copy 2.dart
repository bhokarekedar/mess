import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Jobs',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Search Jobs'),
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [
                    Material(
                      elevation: 20.0,
                      shadowColor: Colors.blue,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search Job",
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 12),
                      child: Material(
                        elevation: 20.0,
                        shadowColor: Colors.blue,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search Location",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Jobs',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.black,
                          size: 40.0,
                          semanticLabel: 'search Location',
                        ),
                        Column(
                          children: [
                            Text(
                              'A',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            Text(
                              'Z',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Container(
                                height: 120.0,
                                child:
                                    Image(image: AssetImage('assets/one.jpg')),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                      child: Text(
                                        'Atlassian, New York',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                      child: Text(
                                        'Sr. Database Managaer',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                      child: Text(
                                        '50 to 60 year',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 120.0,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.save,
                                    color: Colors.black,
                                    size: 30.0,
                                    semanticLabel: 'search jobs',
                                  ),
                                  Text(
                                    '3 days ago',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Container(
                                height: 120.0,
                                child:
                                    Image(image: AssetImage('assets/one.jpg')),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                      child: Text(
                                        'Atlassian, New York',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                      child: Text(
                                        'Sr. Database Managaer',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                      child: Text(
                                        '50 to 60 year',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 120.0,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.save,
                                    color: Colors.black,
                                    size: 30.0,
                                    semanticLabel: 'search jobs',
                                  ),
                                  Text(
                                    '3 days ago',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 95, 8, 0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.vertical_align_top),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    color: Colors.blue[100],
                    padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                    textColor: Colors.blue,
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "Flat Button",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  FlatButton(
                    color: Colors.blue[100],
                    textColor: Colors.blue,
                    padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "Flat Button",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

// Container(

//               child: FittedBox(
//                   child: Material(
//                   color: Colors.white,
//                   elevation: 14.0,
//                   borderRadius: BorderRadius.circular(24.0),
//                   shadowColor: Color(0x802196F3),
//                   child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                    Container(
//                        width: 250,
//                        height: 180,
//                     child:Image(
//                    fit: BoxFit.contain,
//                     alignment: Alignment.topLeft,
//                     image: NetworkImage(
//                     "https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
//                     ),
//                    ),

//                   ],
//                   ),

//                 ),
//               ),
//             ),
