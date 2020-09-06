import 'package:flutter/material.dart';
import 'kart.dart';

class KartList extends StatefulWidget {
  @override
  _KartListState createState() => _KartListState();
}

class _KartListState extends State<KartList> {

  List<Kart> kartbodies = [
    Kart(name: "Spectre X", type: "Legend"),
    Kart(name: "Stingray X", type: "Legend"),
    Kart(name: "Plasma X FT", type: "Normal"),
    Kart(name: "Lodi First", type: "Normal"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              RaisedButton.icon(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/profile", arguments: {
                    "kart": "Lodi First",
                  });
                },
                icon: Icon(Icons.edit),
                label: Text("Edit Kart Information"),
              ),
            ],
          ),
        )
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
    );
  }
}
