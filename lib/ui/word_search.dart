import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jisho/bloc/search_word_bloc.dart';
import 'package:jisho/bloc/search_word_event.dart';
import 'package:jisho/bloc/search_word_state.dart';
import 'package:jisho/model/word_model.dart';

class WordSearch extends SearchDelegate<WordDefinition>{
  final _bloc;

  WordSearch(this._bloc);


  @override
  List<Widget> buildActions(BuildContext context) => null;

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    _bloc.add(SearchWordDefEvent(query));

    return BlocBuilder<SearchWordBloc, SearchWordState>(
      bloc: _bloc,
      builder: (BuildContext context, SearchWordState state){
        if(state is SearchWordError){
          return Text(state.errorMessage);
        }
        if(state is WordDefFoundState){
          return Text(state.wordDefinition.definitions.first.definition);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text("Search for $query"),
    );
  }

}