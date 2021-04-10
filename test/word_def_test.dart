import 'package:flutter_test/flutter_test.dart';
import 'package:jisho/network/i_client.dart';
import 'package:jisho/network/mock_api_response.dart';

void main(){
  group("API test", (){
    test(
      "Fetch Acorn Definition",
      () async {
        IClient _client = MockApiResponse();
        final res = await _client.getAsync();

        expect(res.mappedResult.word, "acorn");
        expect(res.networkServiceResponse.success, isTrue);
      }
    );
  });
}