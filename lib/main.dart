import 'package:flutter/material.dart';
import 'home.dart';
import 'patient_profile.dart';

void main() => runApp(MaterialApp(
  initialRoute: "/home",
  routes: {
    "/home": (context) => Home(),
    "/profile": (content) => PatientProfile(),
  },
));


