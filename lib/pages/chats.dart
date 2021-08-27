import 'package:flutter/material.dart';
import 'newEventForm.dart';
class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[800],
          title: Text("Make a New Event")
      ),
      body: newEventForm(),
      );
  }
}
