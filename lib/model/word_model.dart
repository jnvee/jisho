
class WordDefinition {
  WordDefinition(
      {this.wordtype,
      this.worddefinition,
      this.wordexample,
      this.wordimage_url,
      this.wordemoji,
      this.word,
      this.wordpronunciation});
  String wordtype;
  String worddefinition;
  String wordexample;
  String wordimage_url;
  String wordemoji;
  String word;
  String wordpronunciation;

  factory WordDefinition.fromJson(Map<String, dynamic> parsedJson) {
    return WordDefinition(
      wordtype: parsedJson['definitions']['type'],
      worddefinition: parsedJson['definitions']['definition'],
      wordexample: parsedJson['definitions']['example'],
      wordimage_url: parsedJson['definitions']['image_url'],
      wordemoji: parsedJson['definitions']['emoji'],
      word: parsedJson['word'],
      wordpronunciation: parsedJson['pronunciation'],
    );
  }
}
