import 'package:dio/dio.dart';

class ApiProvider {
  static BaseOptions options = BaseOptions(
      baseUrl: "https://rickandmortyapi.com/api",
      connectTimeout: 10000,
      receiveTimeout: 10000);
}
