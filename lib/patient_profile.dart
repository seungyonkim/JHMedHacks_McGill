import 'package:flutter/material.dart';
import "word_list.dart";

class PatientProfile extends StatelessWidget {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Medhacks 2020"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 30.0),
        child: Column(
          children: [
            // Patient Name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data["patient_name"],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
              ],
            ),
            // Patient Profile Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 150,
                )
              ]
            ),
            // Patient Word List
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: WordList(),
                    ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
