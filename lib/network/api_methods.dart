import 'package:jisho/model/word_model.dart';
import 'package:jisho/network/i_client.dart';
import 'package:jisho/network/rest_api_service.dart';

abstract class ApiMethods{
  Future<WordDefinition> getWordDefinition(String url, String headerKey, String headerValue);
}

class GetWord extends ApiMethods{
  IClient _iClient;

  GetWord(){
    _iClient = RestApiService();
  }

  @override
  Future<WordDefinition> getWordDefinition(String url, String headerKey, String headerValue) async {
    print("in here");
    print(url);
    var result = await _iClient.getAsync(url, headerKey, headerValue);
    if(result.networkServiceResponse.success){
      WordDefinition wordDefinition = WordDefinition.fromJson(result.mappedResult);
      return wordDefinition;
    } else {
      throw Exception(result.networkServiceResponse.message);
    }
  }

}