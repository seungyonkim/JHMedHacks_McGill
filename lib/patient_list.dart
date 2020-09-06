import 'package:flutter/material.dart';
import "patient_card.dart";

class PatientList extends StatefulWidget {
  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {

  List<String> patients = [
    "Julia Robert",
    "David Sweet",
    "Tim Lo",
    "Hannah Brown",
    "Krisztina Davis",
    "Alex Lepoint",
    "Halayna Rumblee",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
        child: Column(
          children: patients.map((patient) => PatientCard(
            name: patient,
          )).toList(),
        ),
    );
  }
}

// backgroundColor: Colors.grey[300],
// appBar: AppBar(
//   title: Text("Favorite Karts"),
//   centerTitle: true,
//   backgroundColor: Colors.blueAccent,
// ),
// body: Column(
//   children: kartbodies.map((kart) => KartCard(
//     kart: kart,
//     delete: () {
//       setState(() {
//         kartbodies.remove(kart);
//       });
//     },
//   )).toList(),
// ),