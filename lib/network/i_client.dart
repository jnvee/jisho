import 'package:jisho/network/service_response.dart';

abstract class IClient{
  Future<MappedNetworkServiceResponse<T>> getAsync<T>(String url, Map<String, dynamic> queryParams);
}
