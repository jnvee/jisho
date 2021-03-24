import 'package:jisho/model/word_model.dart';
import 'package:jisho/network/i_client.dart';
import 'package:jisho/network/rest_api_service.dart';

abstract class ApiMethods{
  Future<WordDefinition> getWordDefinition(String url, Map<String, dynamic> queryParams);
}

class GetWord extends ApiMethods{
  IClient _iClient;

  GetWord(){
    _iClient = RestApiService();
  }

  @override
  Future<WordDefinition> getWordDefinition(String url, Map<String, dynamic> queryParams) async {
    var result = await _iClient.getAsync(url, queryParams);
    if(result.networkServiceResponse.success){
      WordDefinition wordDefinition = WordDefinition.fromJson(result.mappedResult);
      return wordDefinition;
    } else {
      throw Exception(result.networkServiceResponse.message);
    }
  }

}