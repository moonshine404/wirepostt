import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact.dart';

class CRUD extends StatefulWidget {
  const CRUD({super.key});

  get darkBlueColor => null;

  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(color: darkBlueColor),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[_form(), _list()],
        ),
      ),
    );
  }

  _form() => Text('form goes here');

  _list() => Text('list of contacts goes here');

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
