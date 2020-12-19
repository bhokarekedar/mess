import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child:
                Text("Help & Support", style: TextStyle(color: Colors.white))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Thank You For Reaching To Us. We Will Get Back To You Soon!',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Its about:',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your message:',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.multiline,
                            minLines: 3,
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email:',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
              SizedBox(height: 40),
              //bottom button
              Container(
                child: Center(
                  child: OutlineButton(
                    padding: EdgeInsets.fromLTRB(130, 15, 130, 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue),
                    onPressed: () {},
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.blue[600],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      //drawer: Drawer(),
    );
  }
}
