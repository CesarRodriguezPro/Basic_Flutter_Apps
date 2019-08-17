import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// this part is init by taping stless
// help in creating apps faster
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Container(
                child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: <Widget>[
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('images/cesar.jpg'),
                            ),
                            Text(
                              'Cesar Rodriguez',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Pacifico'),
                            ),
                            Text(
                              'MOBILE DEVELOPER',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 20,
                                  letterSpacing: 2.5,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                              width: 150,
                              child: Divider(
                                color: Colors.teal[200],
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading: Icon(
                                  Icons.call,
                                  color: Colors.teal[900],
                                  size: 20.0,
                                ),
                                title: Text(
                                  '+1 212 470 4458',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal[900],
                                      fontFamily: 'SourceSansPro',
                                      letterSpacing: 2.5),
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading: Icon(
                                  Icons.email,
                                  color: Colors.teal[900],
                                  size: 20.0,
                                ),
                                title: Text(
                                  'streamlink777@gmail.com',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal[900],
                                      fontFamily: 'SourceSansPro',
                                      letterSpacing: 2),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
