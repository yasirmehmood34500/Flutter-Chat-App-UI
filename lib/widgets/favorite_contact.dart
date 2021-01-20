import 'package:chat_app_ui/screens/chat_page.dart';
import 'package:flutter/material.dart';

class FavoriteContact extends StatelessWidget {
  final List<String> users = [
    'Mehmood',
    'Yasir',
    'Imran',
    'Mehmood',
    'Shakeel',
    'Yasir',
    'Imran',
    'Mehmood',
    'Ali',
    'Usman',
    'Mehmood',
    'Sajid',
    'Yasir',
    'Faheem',
    'Mehmood',
    'Khalid',
    'Anjum',
    'Ahad',
    'Mehmood',
    'Yasir',
    'Nabeel',
    'Mehmood',
    'Shakeel',
    'Mehmood'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Favorite Contact",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.0),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  iconSize: 30.0,
                  color: Colors.white,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            // color: Colors.brown,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage(users[index]))),
                                      child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(radius: 35.0,backgroundImage: NetworkImage("https://timetechsol.com/upload/team_profile/yasir.jpg"),),
                          SizedBox(height: 6.0,),
                          Text(users[index],style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16.0,color: Colors.white),),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
