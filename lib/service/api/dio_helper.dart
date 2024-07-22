import 'package:dio/dio.dart';
import 'package:maqal/constants/end_points.dart';

class DioHelper {
  static Dio? dio;

  void dioInit() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }
}
