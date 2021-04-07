import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jisho/bloc/search_word_bloc.dart';
import 'package:jisho/bloc/search_word_event.dart';
import 'package:jisho/bloc/search_word_state.dart';
import 'package:jisho/model/word_model.dart';
import 'package:jisho/ui/word_search.dart';

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
      appBar: AppBar(
        title: Text("Jisho"),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () async {
              WordDefinition selectedWord = await showSearch(
                  context: context,
                  delegate: WordSearch(_searchWordBloc)
              );
            },
          )
        ],
      ),
      body: Container()
    );
  }
}
