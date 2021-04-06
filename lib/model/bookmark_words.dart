import 'package:hive/hive.dart';
import 'package:jisho/model/word_model.dart';

part 'bookmark_words.g.dart';

@HiveType(typeId: 0)
class BookmarkWords {
  @HiveField(0)
  final WordDefinition wordDefinition;

  BookmarkWords(this.wordDefinition);

  @override
  List<Object> get props => [wordDefinition];
}
