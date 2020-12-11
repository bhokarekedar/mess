import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Center(child: Text("Inbox", style: TextStyle(color: Colors.white))),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //CARD START
            Expanded(
              child: Container(
                  child: Column(
                children: [
                  //CARD START
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Peter Parker',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '15 mins',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Any intrest in seeing the seminar..',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        Icon(Icons.settings),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),

                  ///CARD END

                  //CARD START
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Peter Parker',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '15 mins',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Any intrest in seeing the seminar..',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        Icon(Icons.settings),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),

                  ///CARD END

                  //CARD START
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Peter Parker',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '15 mins',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Any intrest in seeing the seminar..',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        Icon(Icons.settings),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),

                  ///CARD END

                  //CARD START
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Peter Parker',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '15 mins',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Any intrest in seeing the seminar..',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        Icon(Icons.settings),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),

                  ///CARD END
                ],
              )),
            ),
            //CARD END

            //BOTTOM AREA
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
