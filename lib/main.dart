import 'package:chat/chatScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());

//  Firestore.instance.collection("mensagens").document().setData({
//    "text": "Olá",
//    "from": "Marcelo",
//    "read": false
//  });
//    QuerySnapshot snapshot = await Firestore.instance.collection("mensagens").getDocuments();
//    snapshot.documents.forEach((d) {
//      print(d.data);
//      d.reference.updateData({"read": false});
//    });

  Firestore.instance.collection("mensagens").snapshots().listen((snaps) {
    snaps.documents.forEach((doc) {
      print(doc.data);
    });
  });
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, //,
          iconTheme: IconThemeData(color: Color.fromRGBO(0, 88, 174, 1))),
      home: ChatScreen(),
    );
  }
}
