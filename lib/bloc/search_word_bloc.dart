import 'package:bloc/bloc.dart';
import 'package:jisho/bloc/search_word_event.dart';
import 'package:jisho/bloc/search_word_state.dart';

class SearchWordBloc extends Bloc<SearchWordEvent, SearchWordState>{

  SearchWordBloc(SearchWordState initialState) : super(initialState);

  @override
  Stream<SearchWordState> mapEventToState(SearchWordEvent event) async* {
    try{
      yield await event.applyAsync(currentState: state, bloc: this);
    } catch (error, stacktrace) {
      print("$error $stacktrace");
      yield state;
    }
  }

}