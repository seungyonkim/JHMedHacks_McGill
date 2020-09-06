import 'package:flutter/material.dart';
import "word_list.dart";
import "package:speech_to_text/speech_to_text.dart" as stt;

class PatientProfile extends StatefulWidget {
  @override
  _PatientProfileState createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = "Press the button and start speaking";
  double _confidence = 1.0;

  Map data = {};

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  void _listen() async {
    if(!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print("onStatus: $val"),
        onError: (val) => print("onError: $val"),
      );
      if(available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if(val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Medhacks 2020"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Icon(Icons.cancel),
                        // mini: true,
                        // backgroundColor: Colors.deepOrange,
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Icon(_isListening ? Icons.mic : Icons.mic_none),
                        // backgroundColor: Colors.pink,
                        onPressed: () {
                          _listen();
                        },
                      ),
                      RaisedButton(
                        child: Icon(Icons.stop),
                        // mini: true,
                        // backgroundColor: Colors.deepPurple,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                    child: Text(
                        _text,
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        )
                    )
                )
              ],
            ),
          ),
      ),
    );
  }
}
