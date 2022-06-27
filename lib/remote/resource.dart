import 'network_error.dart';
import 'package:dio/dio.dart';

/// * Description: 请求结果封装转换
/// * Author:      郭文龙
/// * Date:        2022/6/7 1:20
/// * Email:       guowenlong20000@sina.com

class Resource<T> {
  T? data;
  NetworkError? error;

  Resource(this.data, this.error);

  bool get isSuccess => error == null;

  bool get isError => !isSuccess;

  static Future<Resource<T>> convert<T>(
      Future<Response<dynamic>> Function() future,
      Function(Response<dynamic> value) json) async {
    var response =
        await future().then((value) => json(value)).catchError((error) {
      return Resource<T>(null, NetworkError(error));
    });
    return Resource(response, null);
  }
}
