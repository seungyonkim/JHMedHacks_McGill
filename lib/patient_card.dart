import 'package:flutter/material.dart';
import "word_list.dart";
import "call_patient.dart";

class PatientCard extends StatelessWidget {

  final String name;

  PatientCard({ this.name });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
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
              child: CallPatient(),
            ),
          ],
        ),
      ),
    );
  }
}
