import 'package:flutter/material.dart';
import 'package:flutter_middle/MyAnimatedContainer.dart';
import 'package:flutter_middle/MyAnimatedOpacity.dart';
import 'package:flutter_middle/MyDrawer.dart';
import 'package:flutter_middle/MyFormValidation.dart';
import 'package:flutter_middle/MyOrientation.dart';
import 'package:flutter_middle/MySnackBar.dart';
import 'package:flutter_middle/MyTabController.dart';
import 'package:flutter_middle/MyTest.dart';
import 'package:flutter_middle/Chat.dart';
import 'package:flutter_middle/login_page.dart';
import 'package:flutter_middle/Dismissible.dart';
import 'UrlLink.dart';
import 'Signature.dart';
import 'Myasink.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          brightness: Brightness.light,
          primaryColor: Colors.blue,
          accentColor: Colors.yellow,
          fontFamily: ''),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tutorial'),
          ),
          body: Home()),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('AnimatedContainer'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
          },
        ),
        ListTile(
          title: Text('AnimatedOpacity'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
          },
        ),
        ListTile(
          title: Text('MyDrawer'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyDrawer()));
          },
        ),
        ListTile(
          title: Text('MySnackBar'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MySnackBar()));
          },
        ),
        ListTile(
          title: Text('MyOrientation'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyOrientation()));
          },
        ),
        ListTile(
          title: Text('MyTabController'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyTabController()));
          },
        ),
        ListTile(
          title: Text('MyFormValidation'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyFormValidation()));
          },
        ),
        ListTile(
          title: Text('MyTest'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyTest('asdf')));
          },
        ),
        ListTile(
          title: Text('Chat'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Chat()));
          },
        ),
        ListTile(
          title: Text('Login'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
        ListTile(
          title: Text('UrlLink'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => UrlLink()));
          },
        ),
        ListTile(
          title: Text('Dismissible'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyDismissible()));
          },
        ),
        ListTile(
          title: Text('Signature'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Signiture()));
          },
        ),
        ListTile(
          title: Text('asink await'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyAsink()));
          },
        )
      ],
    );
  }
}
