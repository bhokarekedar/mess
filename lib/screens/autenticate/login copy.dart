import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/main.dart';
import 'package:flutter_app/shared/loading.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

const SERVER_IP = 'https://projecta-bugdroid-v01.herokuapp.com/api/login/';

class _LoginState extends State<Login> {
  String email;
  String password;
  bool _isLoading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<String> attemptLogIn(String email, String password) async {
    var res = await http
        .post("$SERVER_IP", body: {"email": email, "password": password});
    if (res.statusCode == 200) return res.body;
    return null;
  }

  signIn(String email, String password) async {
    setState(() {
      _isLoading = true;
    });
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'email': email, 'password': password};
    var jsonResponse = null;
    var response = await http.post(
        "https://projecta-bugdroid-v01.herokuapp.com/api/login/",
        body: data);
    print("response.body");
    print(response.body);
    if (response.statusCode == 200) {
      jsonResponse = await json.decode(response.body);
      print("jsonResponse");
      print('Howdy, ${jsonResponse['access_token']}!');
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        await sharedPreferences.setString(
            "token", jsonResponse['access_token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => MainPage()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }
  }

  Future<String> displayDialog() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You Have Entered Wrong Credentials'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Loading()
        : Form(
            key: _formKey,
            child: Scaffold(
              body: SafeArea(
                child: Column(
                  children: [
                    TextFormField(
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
                    ),
                    TextFormField(
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
                    ),
                    OutlineButton(
                      padding: EdgeInsets.fromLTRB(130, 15, 130, 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white),
                      onPressed: () async {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }
                        _formKey.currentState.save();
                        await signIn(
                            _emailController.text, _passwordController.text);
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.blue[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
