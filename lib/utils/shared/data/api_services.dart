import 'package:dio/dio.dart';

class DioHelper {
  static Future<Response> postData({
    required String url,
    required Map data,
    Map<String, dynamic>? queryParameters,
  }) {
    final dio = Dio().post(url,
        data: data,
        queryParameters:
            queryParameters ?? {"Content-Type": "application/json"});
    return dio;
  }
}
