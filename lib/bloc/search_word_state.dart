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

class SearchWordDefinition extends SearchWordState{
  final WordDefinition wordDefinition;
  SearchWordDefinition(this.wordDefinition);

  SearchWordDefinition copyWith(WordDefinition wordDefinition){
    return SearchWordDefinition(wordDefinition);
  }
}