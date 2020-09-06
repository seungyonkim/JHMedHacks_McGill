import 'package:flutter/material.dart';

class KartProfile extends StatefulWidget {
  @override
  _KartProfileState createState() => _KartProfileState();
}

class _KartProfileState extends State<KartProfile> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text("Choose a KartBody"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text("${data['kart']}"),
    );
  }
}
