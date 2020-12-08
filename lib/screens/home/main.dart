import 'dart:convert' show json, base64, ascii;
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/autenticate/login.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => Login()),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Code Land", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              sharedPreferences.clear();
              sharedPreferences.commit();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (BuildContext context) => Login()),
                  (Route<dynamic> route) => false);
            },
            child: Text("Log Out", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Center(child: Text("Main Page")),
      drawer: Drawer(),
    );
  }
}

// const SERVER_IP = 'https://projecta-bugdroid-v01.herokuapp.com/api/login/';

// class Home extends StatelessWidget {
//   Home(this.jwt, this.payload);

//   factory Home.fromBase64(String jwt) => Home(
//       jwt,
//       json.decode(
//           ascii.decode(base64.decode(base64.normalize(jwt[0].split(".")[1])))));

//   final String jwt;
//   final Map<String, dynamic> payload;
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(title: Text("Secret Data Screen")),
//         body: Center(
//           child: FutureBuilder(
//               future: http.read('$SERVER_IP', headers: {"Authorization": jwt}),
//               builder: (context, snapshot) => snapshot.hasData
//                   ? Column(
//                       children: <Widget>[
//                         Text("${payload['email']}, here's the data:"),
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
