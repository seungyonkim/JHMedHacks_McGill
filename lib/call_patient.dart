import 'package:flutter/material.dart';

class CallPatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(0),
        color: Colors.green,
        child: Icon(
          Icons.call,
          color: Colors.white,
          size: 20,
          // textDirection: ,
        ),
      ),
    );
  }
}
