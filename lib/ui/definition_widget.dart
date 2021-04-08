import 'package:flutter/material.dart';
import 'package:jisho/model/word_model.dart';

class DefinitionWidget extends StatelessWidget {
  final WordDefinition wordDefinition;

  DefinitionWidget({@required this.wordDefinition});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          wordDefinition.definitions[0].imageUrl == null
              ? SizedBox.shrink()
              : CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(wordDefinition.definitions[0].imageUrl),
          ),
          Text(
            wordDefinition.word,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24
            ),
          ),
          Text(
            wordDefinition.definitions[0].type,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black38
            ),
          ),
          Text(wordDefinition.definitions[0].definition),
        ],
      ),
    );
  }
}
