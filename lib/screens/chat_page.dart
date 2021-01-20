import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String user;
  ChatPage(this.user);
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<String> chats = [
    '0',
    '1',
    '0',
    '0',
    '4',
    '0',
    '0',
    '7',
    '8',
    '9',
    '0',
    '0',
    '0',
    '13',
    '14',
    '15',
    '0',
    '0',
    '0',
    '19',
    '20',
    '21',
    '0',
    '0',
    '0',
    '25',
    '26',
    '27',
    '0',
    '29',
    '0'
  ];
  _buildMessage(message, isMe) {
    // print("testing = "+isMe);
    final mes = Container(
      margin: isMe == "0"
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
          color: isMe == "0" ? Colors.brown[100] : Colors.grey,
          borderRadius: isMe == "0"
              ? BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0))
              : BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("09:00"),
          Text(message),
        ],
      ),
    );
    if (isMe == "0") {
      return mes;
    }
    return Row(
      children: [
        mes,
        IconButton(
            icon: Icon(Icons.favorite_border),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () {}),
      ],
    );
  }

  _buildMessageContext() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.photo), onPressed: () {}),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration.collapsed(hintText: 'Write message ...'),
            ),
          ),
          IconButton(icon: Icon(Icons.send), onPressed: () {})
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user,
          style: TextStyle(
              fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(Icons.more_horiz),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {}),
        ],
      ),
      
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: chats.length,
                    itemBuilder: (BuildContext context, int index) {
                      final isMe = chats[index];
                      return _buildMessage("Hi, How r u?", isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageContext(),
          ],
        ),
      ),
    );
  }
}
