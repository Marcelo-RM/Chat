import 'package:chat/testComposer.dart';
import "package:flutter/material.dart";

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreen createState() => _ChatScreen();
}

class _ChatScreen extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Olá"),
         elevation: 0,
       ),
       body: TextComposer(),
    );
  }
}