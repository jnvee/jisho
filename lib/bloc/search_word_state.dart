import 'package:jisho/model/word_model.dart';

abstract class SearchWordState {
  const SearchWordState();
}

class SearchWordError extends SearchWordState{
  final dynamic errorMessage;
  SearchWordError(this.errorMessage);

  SearchWordError copyWith(dynamic errorMessage){
    return SearchWordError(errorMessage);
  }
}

class WordDefFoundState extends SearchWordState{
  final WordDefinition wordDefinition;
  WordDefFoundState(this.wordDefinition);

  WordDefFoundState copyWith(WordDefinition wordDefinition){
    return WordDefFoundState(wordDefinition);
  }
}