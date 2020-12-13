import 'package:flutter/material.dart';
import 'package:service/Screens/body.dart';
import 'package:service/Screens/hello.dart';
import 'package:service/Screens/login.dart';
import 'package:service/Screens/signup.dart';

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String currentScreen = 'body';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          // elevation: 0.0,
          // brightness: Brightness.dark,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/icon5.png",
              width: 50,
              height: 50,),
              // IconButton(
              //     icon: Icon(Icons.home_repair_service,
              //         size: 35, color: Colors.white),
              //     onPressed: null),
              Text('Fix It'),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                // padding: EdgeInsets.symmetric(vertical: 32),
                child: Container(),
                decoration: BoxDecoration(
                  color: Colors.red[700],
                ),
              ),
              ListTile(
                hoverColor: Colors.deepPurple[100],
                autofocus: true,
                title: Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  setState(() {
                    currentScreen = 'body';
                  });
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 5.0,
                color: Colors.deepPurple[400],
              ),
              ExpansionTile(
                title: Text(
                  'Careers',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    hoverColor: Colors.deepPurple[100],
                    autofocus: true,
                    title: Row(children: [
                      IconButton(
                          icon: Icon(Icons.arrow_right,
                              size: 35, color: Colors.black),
                          onPressed: null),
                      Text(
                        'SignUp',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                    ]),
                    onTap: () {
                      setState(() {
                        currentScreen = 'signup';
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    hoverColor: Colors.deepPurple[100],
                    // autofocus: true,
                    title:Row(children: [
                      IconButton(
                          icon: Icon(Icons.arrow_right,
                              size: 35, color: Colors.black),
                          onPressed: null),
                      Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                    ]),
                    onTap: () {
                      setState(() {
                        currentScreen = 'login';
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              ListTile(
                hoverColor: Colors.deepPurple[100],
                autofocus: true,
                title: Text(
                  'About',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  setState(() {
                    currentScreen = 'about';
                  });
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 5.0,
                color: Colors.deepPurple[400],
              ),
            ],
          ),
        ),
        body: _showScreen(),
      ),
    );
  }

  _showScreen() {
    if (currentScreen == 'signup') {
      return SignUp();
    } else if (currentScreen == 'login') {
      return Login();
    } else if (currentScreen == 'about') {
      return Hello();
    } else {
      return Body();
    }
  }
}
