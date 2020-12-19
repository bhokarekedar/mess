import 'package:flutter/material.dart';

import 'messaging/inboxClass.dart';


class Abc extends StatefulWidget {
  @override
  _AbcState createState() => _AbcState();
}

class _AbcState extends State<Abc> {

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
        title: Center(
            child:
                Text("Abc & Support", style: TextStyle(color: Colors.white))),
      ),
      body: ListView.builder(
        itemCount: inboxClass.length,
        itemBuilder: (context, index){
          return Card(child: ListTile(
            onTap: (){},
            title: Text(inboxClass[index].name),
          ),);
        }  
        )
      //drawer: Drawer(),
    );
  }
}


                  // //CARD START
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         'Peter Parker',
                  //         style: TextStyle(
                  //             fontSize: 20.0, fontWeight: FontWeight.bold),
                  //       ),
                  //       Text(
                  //         '15 mins',
                  //         style: TextStyle(
                  //           color: Colors.grey[500],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 5),
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         'Any intrest in seeing the seminar..',
                  //         style: TextStyle(
                  //           color: Colors.grey[500],
                  //         ),
                  //       ),
                  //        IconButton(
                  //               icon: Icon(Icons.settings),
                  //               iconSize: 35.0,
                  //               onPressed: () {
                  //                 displayIcon();
                  //               },
                  //             ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 5),
                  // Container(
                  //   height: 1,
                  //   width: double.maxFinite,
                  //   color: Colors.grey,
                  // ),

                  // ///CARD END