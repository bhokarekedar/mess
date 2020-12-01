import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: Scaffold(
      appBar:AppBar(
        title: Text('Search Jobs'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //start header to card
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 20),

                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                                Text(
                                  'Z',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),


                //start card
                  Material(
                    child: SizedBox(
                      height: size.height / 6,
                      child: Card(
                        clipBehavior:Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                              Expanded(
                                  flex: 2,                            
                                   child: AspectRatio(
                                  aspectRatio: 3 / 4,
                                   child: Image(image: AssetImage('assets/one.jpg'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            SizedBox(width: 15),
                         
                            Expanded(
                              flex: 4,
                              child:  Padding(
                   padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                     child: Container(       
                              child: Column( 
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
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
                            ),

                            Expanded(
                              flex: 1,
                              child:   Container(
                      child: Column( 
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                //end card

                
                //start card
                  Material(
                    child: SizedBox(
                      height: size.height / 6,
                      child: Card(
                        clipBehavior:Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                              Expanded(
                                  flex: 2,                            
                                   child: AspectRatio(
                                  aspectRatio: 3 / 4,
                                   child: Image(image: AssetImage('assets/one.jpg'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            SizedBox(width: 15),
                         
                            Expanded(
                              flex: 4,
                              child:  Padding(
                   padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                     child: Container(       
                              child: Column( 
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
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
                            ),

                            Expanded(
                              flex: 1,
                              child:   Container(
                      child: Column( 
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                //end card

                ],
              ),
            ),
          ),
          //end header to card

          //below buttons
          Container(
            
            child: 
            Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Padding(
                     padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          onPressed: (){},
                          child: Icon(Icons.vertical_align_top),
                        ),
                      ],
                    ),
                  ),

                    SizedBox(height: 10),
                    
                   Container(
                     child:Row(children: [
                Expanded(
                  child: FlatButton(
                  color: Colors.blue[100],
                 // padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                  textColor: Colors.blue,
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                  "Search",
                  style: TextStyle(fontSize: 20.0),
              ),
            ),
                ),

                                Expanded(
                  child: FlatButton(
                  //color: Colors.blue[100],
                 // padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                  textColor: Colors.blue,
                  splashColor: Colors.white,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                  "My Jobs",
                  style: TextStyle(fontSize: 20.0),
              ),
            ),
        ),

                



                    
                    
                     ],
                     ),
                   ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
