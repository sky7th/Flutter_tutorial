import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLink extends StatefulWidget {
  @override
  _UrlLinkState createState() => _UrlLinkState();
}

class _UrlLinkState extends State<UrlLink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: OutlineButton(
              onPressed: () {
                launch('https://www.google.com');
              },
              child: Text('홈페이지 링크'),
            ),
          ),
          InkWell(
            onTap: () {
              print("탭");
            },
            child: Container(
              padding: EdgeInsets.all(50.0),
              child: Text('button'),
            ),
          )
        ],
      )),
    );
  }
}
