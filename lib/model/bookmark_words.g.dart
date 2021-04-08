// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_words.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookmarkWordsAdapter extends TypeAdapter<BookmarkWords> {
  @override
  final int typeId = 0;

  @override
  BookmarkWords read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookmarkWords(
      fields[0] as WordDefinition,
    );
  }

  @override
  void write(BinaryWriter writer, BookmarkWords obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.wordDefinition);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookmarkWordsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
