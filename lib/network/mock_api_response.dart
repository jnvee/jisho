import 'package:jisho/model/word_model.dart';
import 'package:jisho/network/i_client.dart';
import 'package:jisho/network/service_response.dart';

class MockApiResponse implements IClient{

  @override
  Future<MappedNetworkServiceResponse<T>> getAsync<T>({String url, String headerKey, String headerValue}) {
    return Future.value(
      MappedNetworkServiceResponse<T>(
        networkServiceResponse: NetworkServiceResponse(
          success: true
        ),
        mappedResult: WordDefinition(
          word: "acorn",
          definitions: [
            Definition(
                type: "noun",
                definition: "the fruit of the oak, a smooth oval nut in a rough cup-like base.",
                example: null,
                imageUrl: "https://media.owlbot.info/dictionary/images/jjjjjjjjjjjjjjjju.jpg.400x400_q85_box-40,0,224,183_crop_detail.jpg",
                emoji: null
            )
          ],
          pronunciation: "ˈāˌkôrn"
        )
      )
    );
  }

}