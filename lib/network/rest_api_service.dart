import 'dart:io';
import 'package:dio/dio.dart';
import 'package:jisho/network/i_client.dart';
import 'package:jisho/network/service_response.dart';

class RestApiService extends IClient{

  @override
  Future<MappedNetworkServiceResponse<T>> getAsync<T>({String url, String headerKey, String headerValue}) async {
    Dio dio = Dio();
    dio.options.headers[headerKey] = headerValue;
    print(dio.options.headers);
    Response response = await dio.get(url);
    return await processResponse<T>(response);
  }

  Future<MappedNetworkServiceResponse<T>> processResponse<T>(Response response) async{
    try{
      if(!((response.statusCode < HttpStatus.ok) ||
          (response.statusCode >= HttpStatus.multipleChoices) ||
          (response.data == null))){

          return MappedNetworkServiceResponse<T>(
            mappedResult: response.data,
            networkServiceResponse: NetworkServiceResponse<T>(
              success: true,
            )
          );
      } else {
        var error = response.data;
        return MappedNetworkServiceResponse<T>(
          networkServiceResponse: NetworkServiceResponse<T>(
            success: false,
            message: "${response.statusCode} ${error.toString()}"
          )
        );
      }

    } on SocketException catch(_){
      return MappedNetworkServiceResponse<T>(
        networkServiceResponse: NetworkServiceResponse<T>(
          success: false,
          message: "${response.statusCode} Check your Internet Connection"
        )
      );
    }
  }

}