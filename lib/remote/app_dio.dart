import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

/// * Description: 全局的dio
/// * Author:      郭文龙
/// * Date:        2022/6/5 19:26
/// * Email:       guowenlong20000@sina.com
class AppDio with DioMixin implements Dio {
  static const baseUrl = "https://cat-fact.herokuapp.com";
  static const connectTimeout = 30 * 1000;
  static const receiveTimeout = 30 * 1000;
  static const sendTimeout = 30 * 1000;

  static Dio getInstance() => AppDio._();

  AppDio._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: baseUrl,
      responseType: ResponseType.json,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );

    this.options = options;
    //公共投
    //拦截器
    httpClientAdapter = DefaultHttpClientAdapter();
  }
}
