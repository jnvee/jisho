import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:jisho/ui/app_entry.dart';
import 'package:path_provider/path_provider.dart';
import 'package:jisho/model/bookmark_words.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final documentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(documentDirectory.path);
  Hive.registerAdapter(BookmarkWordsAdapter());
  runApp(AppEntry());
}
