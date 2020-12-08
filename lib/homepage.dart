import 'package:flutter/material.dart';
import 'dart:convert' show json, base64, ascii;
import 'package:http/http.dart' as http;

// class HomePage extends StatelessWidget {
//   HomePage(this.jwt, this.payload);

//   final SERVER_IP = 'https://projecta-bugdroid-v01.herokuapp.com/api/login/';

//   factory HomePage.fromBase64(String jwt) => HomePage(
//       jwt,
//       json.decode(
//           ascii.decode(base64.decode(base64.normalize(jwt.split(".")[1])))));

//   final String jwt;
//   final Map<String, dynamic> payload;

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(title: Text("Secret Data Screen")),
//         body: Center(
//           child: FutureBuilder(
//               future:
//                   http.read('$SERVER_IP/data', headers: {"Authorization": jwt}),
//               builder: (context, snapshot) => snapshot.hasData
//                   ? Column(
//                       children: <Widget>[
//                         Text("${payload['username']}, here's the data:"),
//                         Text(snapshot.data,
//                             style: Theme.of(context).textTheme.display1)
//                       ],
//                     )
//                   : snapshot.hasError
//                       ? Text("An error occurred")
//                       : CircularProgressIndicator()),
//         ),
//       );
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Jobs'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: HomePage(),
    );
  }
}
