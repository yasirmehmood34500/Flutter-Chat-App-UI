import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 0.0,
        child: Column(children: <Widget>[
          Expanded(
              child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text("yasirmehmood34500@gmail.com"),
                accountName: Text("Yasir Mehmood"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://timetechsol.com/upload/team_profile/yasir.jpg"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text("Y"),
                  )
                ],
              ),
              ListTile(
                title: Text('Dashboard'),
                leading: Icon(Icons.dashboard),
                onTap: () => Navigator.of(context).pop(),
              ),
              ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          )),
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 0.1,
          ),
          Container(
              padding: EdgeInsets.all(10),
              height: 50,
              child: Text(
                "Designed by Yasir Mehmood",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ]));
  }
}
