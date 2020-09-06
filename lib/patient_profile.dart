import 'package:flutter/material.dart';
import "word_list.dart";
import 'package:speech_recognition/speech_recognition.dart';

class PatientProfile extends StatefulWidget {
  @override
  _PatientProfileState createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  SpeechRecognition _speechRecognition;
  bool _isAvailable = false;
  bool _isListening = false;
  String resultText = "";

  Map data = {};

  // @override
  // void initState() {
  //   super.initState();
  //   initSpeechRecognizer();
  // }

  // void initSpeechRecognizer() {
  //   _speechRecognition = SpeechRecognition();
  //   _speechRecognition.setAvailabilityHandler((result) {
  //     setState(() => _isAvailable = result);
  //   });
  //   _speechRecognition.setRecognitionStartedHandler(() {
  //     setState(() => _isListening = true);
  //   });
  //   _speechRecognition.setRecognitionResultHandler((text) {
  //     setState(() => resultText = text);
  //   });
  //   _speechRecognition.setRecognitionCompleteHandler(() {
  //     setState(() => _isListening = false);
  //   });
  //   _speechRecognition.activate().then(
  //       (result) => setState(() => _isAvailable = result)
  //   );
  // }

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
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       FloatingActionButton(
            //         child: Icon(Icons.cancel),
            //         mini: true,
            //         backgroundColor: Colors.deepOrange,
            //         onPressed: () {},
            //       ),
            //       FloatingActionButton(
            //         child: Icon(Icons.mic),
            //         backgroundColor: Colors.pink,
            //         onPressed: () {
            //           // if(_isAvailable && _isListening) {
            //           //   _speechRecognition
            //           //       .listen()
            //           //       .then((result) => print('$result'));
            //           // }
            //         },
            //       ),
            //       FloatingActionButton(
            //         child: Icon(Icons.stop),
            //         mini: true,
            //         backgroundColor: Colors.deepPurple,
            //         onPressed: () {},
            //       ),
            //     ],
            //   ),
            // ),
      //       Container(
      //         width: MediaQuery.of(context).size.width * 0.6,
      //         decoration: BoxDecoration(
      //           color: Colors.cyanAccent[100],
      //           borderRadius: BorderRadius.circular(6),
      //         ),
      //         padding: EdgeInsets.symmetric(
      //           vertical: 8,
      //           horizontal: 12,
      //         ),
      //         child: Text(resultText),
      //       )
          ],
        ),
      )
    );
  }
}
