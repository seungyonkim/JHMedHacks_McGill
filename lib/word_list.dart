import 'package:flutter/material.dart';
import 'word_card.dart';
import "word.dart";

class WordList extends StatefulWidget {
  @override
  _WordListState createState() => _WordListState();
}

class _WordListState extends State<WordList> {

  List<Word> words = [
    Word(vocab: "dizzy", isUrgent: true),
    Word(vocab: "nausea", isUrgent: true),
    Word(vocab: "cough", isUrgent: true),
    Word(vocab: "ache", isUrgent: false),
    Word(vocab: "drowsy", isUrgent: false),
    Word(vocab: "vomit", isUrgent: true),
    Word(vocab: "sample1", isUrgent: false),
    Word(vocab: "sample2", isUrgent: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: words.map((w) => WordCard(word: w)).toList(),
      ),
    );
    // return Row(
    //     children: words.map((word) => WordCard( word: word )).toList(),
    // );
  }
}
