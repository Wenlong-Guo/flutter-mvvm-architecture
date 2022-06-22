import 'package:flutter_mvvm_architecture/remote/network_error.dart';
import 'package:flutter_mvvm_architecture/remote/resource.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

/// * Description: ViewModel的基类
/// * Author:      郭文龙
/// * Date:        2022/6/22 23:07
/// * Email:       guowenlong20000@sina.com
abstract class BaseViewModel extends GetxController {
  void onDestroy();

  Future<Resource<T>> launch<T>(Future<Resource<T>> Function() future,
      [bool isLoading = true]) async {
    if (isLoading) EasyLoading.show(status: 'loading...');
    var resource = await future();
    if (resource.isError) {
      switch (resource.error?.type) {
        case NetworkErrorType.network:
          break;
        case NetworkErrorType.badRequest:
          break;
        case NetworkErrorType.unauthorized:
          break;
        case NetworkErrorType.cancel:
          break;
        case NetworkErrorType.timeout:
          break;
        case NetworkErrorType.server:
          break;
        case NetworkErrorType.unknown:
          break;
        case null:
          break;
      }
    }
    if (isLoading) EasyLoading.dismiss();
    return resource;
  }
}
