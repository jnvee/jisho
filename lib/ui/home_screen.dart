import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jisho/bloc/search_word_bloc.dart';
import 'package:jisho/bloc/search_word_event.dart';
import 'package:jisho/bloc/search_word_state.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchWordBloc = SearchWordBloc();

  @override
  void initState() {
    _searchWordBloc.add(SearchWordDefEvent("owl"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SearchWordBloc, SearchWordState>(
        bloc: _searchWordBloc,
        builder: (BuildContext context, state){
          if(state is SearchWordError){
            return Text(state.errorMessage.toString());
          }
          if(state is WordDefFoundState){
            return Text(state.wordDefinition.word);
          }
          return null;
        },
      ),
    );
  }
}
