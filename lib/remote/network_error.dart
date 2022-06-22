import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

/// * Description: 网络异常
/// * Author:      郭文龙
/// * Date:        2022/6/8 0:50
/// * Email:       guowenlong20000@sina.com
class NetworkError {
  late String message;
  late NetworkErrorType type;

  NetworkError(Exception? error) {
    if (error is DioError) {
      debugPrint('AppError(DioError): '
          'type is ${error.type}, message is ${error.message}');
      message = error.message;
      switch (error.type) {
        case DioErrorType.other:
          if (error.error is SocketException) {
            //SocketException：主机查找失败：''（操作系统错误：没有与主机名关联的地址，errno = 7）
            type = NetworkErrorType.network;
          } else {
            type = NetworkErrorType.unknown;
          }
          break;
        case DioErrorType.connectTimeout:
        case DioErrorType.receiveTimeout:
          type = NetworkErrorType.timeout;
          break;
        case DioErrorType.sendTimeout:
          type = NetworkErrorType.network;
          break;
        case DioErrorType.response:
          // TODO(api)：需要定义更多的http状态；
          switch (error.response?.statusCode) {
            case HttpStatus.badRequest: // 400
              type = NetworkErrorType.badRequest;
              break;
            case HttpStatus.unauthorized: // 401
              type = NetworkErrorType.unauthorized;
              break;
            case HttpStatus.internalServerError: // 500
            case HttpStatus.badGateway: // 502
            case HttpStatus.serviceUnavailable: // 503
            case HttpStatus.gatewayTimeout: // 504
              type = NetworkErrorType.server;
              break;
            default:
              type = NetworkErrorType.unknown;
              break;
          }
          break;
        case DioErrorType.cancel:
          type = NetworkErrorType.cancel;
          break;
        default:
          type = NetworkErrorType.unknown;
      }
    } else {
      debugPrint('AppError(UnKnown): $error');
      type = NetworkErrorType.unknown;
      message = 'AppError: $error';
    }
  }
}

enum NetworkErrorType {
  network,
  badRequest,
  unauthorized,
  cancel,
  timeout,
  server,
  unknown,
}
