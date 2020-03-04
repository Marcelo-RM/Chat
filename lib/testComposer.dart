import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {
  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {

  bool _isComposer = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: () {

            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: "Enviar uma mensagem"),
              onChanged: (text){
                setState(() {
                  _isComposer = text.isNotEmpty;
                });
              },
              onSubmitted: (text){

              },
            )
          ),
          IconButton(
            icon: Icon(Icons.send), 
            onPressed: _isComposer ?(){

            } : null
          )
        ],
      ),
    );
  }
}
