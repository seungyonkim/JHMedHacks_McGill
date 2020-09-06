import 'package:flutter/material.dart';
import 'kart.dart';

class KartCard extends StatelessWidget {

  final Kart kart;
  final Function delete;

  // constructor
  KartCard({ this.kart, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              kart.name,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              kart.type,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8),
            RaisedButton.icon(
              onPressed: delete,
              label: Text("delete this kart"),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
