import 'package:flutter/material.dart';
import "word_list.dart";
import "call_patient.dart";

class PatientCard extends StatefulWidget {

  final String name;

  PatientCard({ this.name });

  @override
  _PatientCardState createState() => _PatientCardState();
}

class _PatientCardState extends State<PatientCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                // child: Text(
                child: InkWell(
                  onTap: () {
                    print("We are entering profile");
                    Navigator.pushNamed(context, "/profile", arguments: {
                      "patient_name": widget.name,
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: WordList(),
            ),
            Expanded(
              flex: 1,
              child: CallPatient( patientName: widget.name ),
            ),
          ],
        ),
      ),
    );
  }
}
