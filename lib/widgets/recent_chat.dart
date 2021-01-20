import 'package:chat_app_ui/screens/chat_page.dart';
import 'package:flutter/material.dart';

class RecentChat extends StatelessWidget {
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
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage(users[index]))),
              child: Container(
                decoration: BoxDecoration(
                    color: users[index] == "Mehmood"
                        ? Color(0xFFFFE0B2)
                        : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                margin: EdgeInsets.only(
                    top: 5.0, bottom: 5.0, right: 10.0, left: 10.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://timetechsol.com/upload/team_profile/yasir.jpg"),
                            radius: 35.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                users[index],
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Text(
                                    "Hi, How r u?",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueGrey),
                                    overflow: TextOverflow.ellipsis,
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "09:00",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          users[index] == "Mehmood"
                              ? Container(
                                  height: 20.0,
                                  width: 40.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.green,
                                  ),
                                  child: Text(
                                    "New",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              : SizedBox.shrink(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ));
  }
}
