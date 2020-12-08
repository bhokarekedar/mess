import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json, base64, ascii;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'homepage.dart';

final storage = FlutterSecureStorage();
const SERVER_IP = 'https://projecta-bugdroid-v01.herokuapp.com/api/login/';
String url = 'https://projecta-bugdroid-v01.herokuapp.com/api/login/';

Future<String> attemptLogIn(String email, String password) async {
  var res = await http
      .post("$SERVER_IP", body: {"email": email, "password": password});
  if (res.statusCode == 200) return res.body;
  return null;
}

class LoginPage extends StatefulWidget {
  // void displayDialog(context, title, text) => showDialog(
  //       context: context,
  //       builder: (context) => AlterDialog(
  //         title: Text(title),
  //         content: Text(text),
  //       ),
  //     );

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String password;
  bool _isLoading = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  signIn(String email, String password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {"email": email, "password": password};
    var jsonResponse;
    var res = await http.post(url, body: body);
    if (res.statusCode == 200) {
      jsonResponse = json.decode(res.body);
      print("${res.body}");
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("toke", jsonResponse['token']);
        // Navigator.of(context).pushAndRemoveUntil(
        //        MaterialPageRoute(builder: (BuildContext context) => HomePage()),
        //     (Router<dynamic> route) => false);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print("${res.body}");
    }
  }

  Widget _buildEmail() {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        hintText: "johndoe",
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }
        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "********",
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  // Future<String> displayDialog() {
  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: false, // user must tap button!
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         content: SingleChildScrollView(
  //           child: ListBody(
  //             children: <Widget>[
  //               Text('You Have Entered Wrong Credentials'),
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             child: Text('Ok'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: _isLoading
                      ? Center(child: CircularProgressIndicator())
                      : Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: () {},
                                    child: Icon(Icons.vertical_align_top),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    'Job App',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                                child: Container(
                                  height: 2,
                                  width: double.maxFinite,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Email id:',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              _buildEmail(),
                              SizedBox(height: 15),
                              Text(
                                'Passsword:',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              _buildPassword(),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  FlatButton(
                                    textColor: Colors.white,
                                    onPressed: () {},
                                    child: Text(
                                      "forgot pasword?",
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Center(
                                child: OutlineButton(
                                  padding:
                                      EdgeInsets.fromLTRB(130, 15, 130, 15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.white),
                                  onPressed: () async {
                                    if (!_formKey.currentState.validate()) {
                                      return;
                                    }
                                    var email = _emailController.text;
                                    var password = _passwordController.text;

                                    //  var jwt = await attemptLogIn(email, password);
                                    // print('bbbb');
                                    // print(jwt);
                                    // //Navigator.of(context).pushNamed('/home');
                                    // if (jwt != null) {
                                    //   await storage.write(
                                    //       key: "jwt", value: jwt);
                                    //   Navigator.push(
                                    //       context,
                                    //       MaterialPageRoute(
                                    //           builder: (context) =>
                                    //               HomePage.fromBase64(jwt)));

                                    await signIn(email, password);

                                    _formKey.currentState.save();
                                  },
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.blue[600],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: Text(
                                  '-- OR --',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                ),
              ),

              //bottom google sign start
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //1st column
                    Column(
                      children: [
                        Text(
                          'Sign In With',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.blue[600],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              mini: true,
                              onPressed: () {},
                              child: Image.asset(
                                'assets/google.png',
                                width: 40.0,
                                height: 40.0,
                              ),
                            ),

                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100.0)),
                                color: Colors.redAccent,
                              ),
                              child: Image.asset(
                                'assets/google.png',
                                width: 40.0,
                                height: 40.0,
                              ),
                            ),
                            // MaterialButton(
                            //     // mini: true,
                            //     onPressed: () {},
                            //     child: Image(
                            //       image: AssetImage('assets/google.png'),
                            //     )),
                            // FlatButton(
                            //   onPressed: () {},
                            //   child: CircleAvatar(
                            //     // radius: 20.0,
                            //     backgroundImage: AssetImage('assets/google.png'),
                            //     backgroundColor: Colors.transparent,
                            //   ),
                            // ),
                            // FlatButton(
                            //   onPressed: () {},
                            //   child: CircleAvatar(
                            //     //radius: 20.0,
                            //     backgroundImage:
                            //         AssetImage('assets/linkedin.jpg'),
                            //     backgroundColor: Colors.transparent,
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                    //end 1st column
                    SizedBox(height: 30),
                    //2nd column
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.blue[600],
                                ),
                              ),
                              FlatButton(
                                textColor: Colors.white,
                                onPressed: () {
                                  /*...*/
                                },
                                child: Text(
                                  "Register",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //end 2nd column
                  ],
                ),
              ),
              //bottom google sign end
            ],
          ),
        ),
      ),
    );
  }
}
