import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void customLaunch(command) async {
  if(await canLaunch(command)) {
    await launch(command);
  } else {
    print("Could not launch $command");
  }
}

class CallPatient extends StatelessWidget {

  final String patientName;

  CallPatient({ this.patientName });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/profile", arguments: {
            "patient_name": patientName,
          });
          customLaunch("tel:+1 555 521 5554");
        },
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
