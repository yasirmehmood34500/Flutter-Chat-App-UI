import 'package:chat_app_ui/widgets/category_selector.dart';
import 'package:chat_app_ui/widgets/drawer_widget.dart';
import 'package:chat_app_ui/widgets/favorite_contact.dart';
import 'package:chat_app_ui/widgets/recent_chat.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          "Chat",
          style: TextStyle(
              fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {}),
        ],
      ),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF607D8B),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Column(
                children: [
                  FavoriteContact(),
                  RecentChat(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
