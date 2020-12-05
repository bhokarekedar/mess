import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        body: LoginPage(),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //var size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Container(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         FloatingActionButton(
//                           mini: true,
//                           onPressed: () {},
//                           child: Icon(Icons.vertical_align_top),
//                         ),
//                         SizedBox(width: 15),
//                         Text(
//                           'Job App',
//                           style: TextStyle(
//                             fontSize: 20.0,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 30),
//                     Text(
//                       'Sign In',
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 15),
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
//                       child: Container(
//                         height: 2,
//                         width: double.maxFinite,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 15),
//                     Text(
//                       'Email id:',
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     TextField(
//                       decoration: InputDecoration(
//                         hintText: "johndoe",
//                         hintStyle: TextStyle(
//                           color: Colors.grey,
//                         ),
//                         fillColor: Colors.white,
//                         filled: true,
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                     SizedBox(height: 15),
//                     Text(
//                       'Password:',
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         hintText: "*********",
//                         hintStyle: TextStyle(
//                           color: Colors.grey,
//                         ),
//                         fillColor: Colors.white,
//                         filled: true,
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         FlatButton(
//                           textColor: Colors.white,
//                           onPressed: () {
//                             /*...*/
//                           },
//                           child: Text(
//                             "forgot password?",
//                             style: TextStyle(fontSize: 20.0),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     Center(
//                       child: OutlineButton(
//                         padding: EdgeInsets.fromLTRB(130, 15, 130, 15),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                         onPressed: () {},
//                         child: Text(
//                           'Sign In',
//                           style: TextStyle(
//                             fontSize: 30.0,
//                             color: Colors.blue[600],
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Center(
//                       child: Text(
//                         '-- OR --',
//                         style: TextStyle(
//                           fontSize: 25.0,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                   ],
//                 ),
//               ),
//             ),

//             //bottom google sign start
//             Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   //1st column
//                   Column(
//                     children: [
//                       Text(
//                         'Sign In With',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.blue[600],
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           FloatingActionButton(
//                             mini: true,
//                             onPressed: () {},
//                             child: Image.asset(
//                               'assets/google.png',
//                               width: 40.0,
//                               height: 40.0,
//                             ),
//                           ),

//                           Container(
//                             width: 40.0,
//                             height: 40.0,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(100.0)),
//                               color: Colors.redAccent,
//                             ),
//                             child: Image.asset(
//                               'assets/google.png',
//                               width: 40.0,
//                               height: 40.0,
//                             ),
//                           ),
//                           // MaterialButton(
//                           //     // mini: true,
//                           //     onPressed: () {},
//                           //     child: Image(
//                           //       image: AssetImage('assets/google.png'),
//                           //     )),
//                           FlatButton(
//                             onPressed: () {},
//                             child: CircleAvatar(
//                               // radius: 20.0,
//                               backgroundImage: AssetImage('assets/google.png'),
//                               backgroundColor: Colors.transparent,
//                             ),
//                           ),
//                           FlatButton(
//                             onPressed: () {},
//                             child: CircleAvatar(
//                               //radius: 20.0,
//                               backgroundImage:
//                                   AssetImage('assets/linkedin.jpg'),
//                               backgroundColor: Colors.transparent,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   //end 1st column
//                   SizedBox(height: 30),
//                   //2nd column
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Don\'t have an account?',
//                               style: TextStyle(
//                                 fontSize: 20.0,
//                                 color: Colors.blue[600],
//                               ),
//                             ),
//                             FlatButton(
//                               textColor: Colors.white,
//                               onPressed: () {
//                                 /*...*/
//                               },
//                               child: Text(
//                                 "Register",
//                                 style: TextStyle(fontSize: 20.0),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   //end 2nd column
//                 ],
//               ),
//             ),
//             //bottom google sign end
//           ],
//         ),
//       ),
//     );
//   }
// }

//  Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   children: [
//                     Center(
//                       child: Text(
//                         'Sign In With',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.blue[600],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: double.infinity,
//                       child: Center(
//                         child: Row(
//                           children: [
//                             Icon(
//                               Icons.save,
//                               color: Colors.black,
//                               size: 30.0,
//                               semanticLabel: 'search jobs',
//                             ),
//                             Icon(
//                               Icons.save,
//                               color: Colors.black,
//                               size: 30.0,
//                               semanticLabel: 'search jobs',
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Center(
//                   child: Row(
//                     children: [
//                       Text(
//                         'Don\'t have an account?',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.blue[600],
//                         ),
//                       ),
//                       FlatButton(
//                         textColor: Colors.white,
//                         onPressed: () {
//                           /*...*/
//                         },
//                         child: Text(
//                           "Register",
//                           style: TextStyle(fontSize: 20.0),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           //bottom google sign end
//         ],
//       ),
//     ),
