import 'package:jisho/api_url.dart';
import 'package:jisho/bloc/search_word_state.dart';
import 'package:jisho/key.dart';
import 'package:jisho/model/word_model.dart';
import 'package:jisho/network/api_methods.dart';

abstract class SearchWordEvent{
  Future<SearchWordState> applyAsync({SearchWordState currentState, bloc});
}

class SearchWordDefEvent extends SearchWordEvent{
  final ApiMethods _apiMethods = GetWord();
  final String word;

  SearchWordDefEvent(this.word);

  @override
  Future<SearchWordState> applyAsync({SearchWordState currentState, bloc}) async {
    try{

        WordDefinition wordDefinition = await _apiMethods.getWordDefinition(
            "${ApiUrl.BASE_URL}/$word",
             "Authorization", "Token ${ApiKey.KEY}");

        return WordDefFoundState(wordDefinition);
    } catch (error, stacktrace){
      return SearchWordError(error);
    }
  }

}