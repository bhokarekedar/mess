import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter demo'),
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        ),
        body:Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
             
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                elevation: 20.0,
                shadowColor: Colors.blue,          
                   child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Job",
                   
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                    icon : Icon(Icons.search),
                    onPressed: (){},
                    
                    ),
                  ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                elevation: 20.0,
                shadowColor: Colors.blue,          
                   child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Job",
                   
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                    icon : Icon(Icons.search),
                    onPressed: (){},
                    
                    ),
                  ),
                  ),
                ),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                  'Recent Jobs',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.black,
                        size: 40.0,
                        semanticLabel: 'search jobs',
                      ),
                      Column(
                        children: [
                    Text(
                    'A',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                     Text(
                    'Z',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

               Padding(
                   padding: EdgeInsets.symmetric(vertical: 6.0),
                 child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                  child:Card(
                     child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children:  [
                      
                        Container(
                          height:120.0,
                        child:Image(
                        image: NetworkImage(
                        "https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
                         
                        ),
                       ),
                   
                     Container(
                        child: Column( 
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                          Text(
                      'Atlassian, New York',
                      style: TextStyle(fontSize: 20.0),
                      ), 
                        Text(
                      'Sr. Database Managaer',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ), 
                        Text(
                      '50 to 60 year',
                      style: TextStyle(fontSize: 20.0),
                      ), 
                      ],
                      ),
                     ),

                     Container(
                       height: 120.0,
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
                      
                       
                     ],
                     ),
                  ),
              ),
               ),

                Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                  child:Card(
                     child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children:  [
                      
                        Container(
                        height:120.0,
                        child:Image(image: AssetImage('assets/one.jpg'
                        )
                        ),
                       ),
                   
                     Container(
                        child: Column( 
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                          Text(
                      'Atlassian, New York',
                      style: TextStyle(fontSize: 20.0),
                      ), 
                        Text(
                      'Sr. Database Managaer',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ), 
                        Text(
                      '50 to 60 year',
                      style: TextStyle(fontSize: 20.0),
                      ), 
                      ],
                      ),
                     ),

                     Container(
                       height: 120.0,
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
                      
                       
                     ],
                     ),
                  ),
              ),
                ),

                 Container(
                child:Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
