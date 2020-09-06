import 'package:flutter/material.dart';
import 'word.dart';

class WordCard extends StatelessWidget {

  final Word word;

  WordCard({ this.word });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          // color: Colors.redAccent,
          color: word.isUrgent ? Colors.redAccent : Colors.blueAccent,
        ),
        child: Text(
          word.vocab,
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        )
    );
  }
}
