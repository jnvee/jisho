
class WordDefinition {
  WordDefinition({
    this.definitions,
    this.word,
    this.pronunciation,
  });

  List<Definition> definitions;
  String word;
  String pronunciation;

  factory WordDefinition.fromJson(Map<String, dynamic> json) => WordDefinition(
    definitions: List<Definition>.from(json["definitions"].map((x) => Definition.fromJson(x))),
    word: json["word"],
    pronunciation: json["pronunciation"],
  );

}

class Definition {
  Definition({
    this.type,
    this.definition,
    this.example,
    this.imageUrl,
    this.emoji,
  });

  String type;
  String definition;
  String example;
  Object imageUrl;
  String emoji;

  factory Definition.fromJson(Map<String, dynamic> json) => Definition(
    type: json["type"],
    definition: json["definition"],
    example: json["example"],
    imageUrl: json["image_url"],
    emoji: json["emoji"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "definition": definition,
    "example": example,
    "image_url": imageUrl,
    "emoji": emoji,
  };
}