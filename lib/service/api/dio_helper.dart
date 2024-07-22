import 'package:dio/dio.dart';
import 'package:maqal/constants/end_points.dart';

class DioHelper {
  static Dio? dio;

  static void dioInit() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getNews(
      {required String endPoint,
      required Map<String, dynamic> queryParameters}) async {
    return await dio!.get(endPoint, queryParameters: queryParameters);
  }
}
