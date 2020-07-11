import 'package:chat_app/screens/recent_chats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
          onPressed: (){

          },
        ),
        title: Text(
          'Chats',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: <Widget>[IconButton(
          icon: Icon(Icons.search),
          iconSize: 30,
          color: Colors.white,
          onPressed: (){

          },
        ),
        ],

      ),
      body: RecentChats(),
    );
  }
}