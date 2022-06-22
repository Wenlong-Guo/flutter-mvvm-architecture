import 'package:dio/dio.dart';
import 'package:flutter_mvvm_architecture/remote/app_dio.dart';
import 'package:flutter_mvvm_architecture/service/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

/// * Description: Repository的基类
/// * Author:      郭文龙
/// * Date:        2022/6/4 12:56
/// * Email:       guowenlong20000@sina.com
abstract class BaseRepository {
  late Dio dio = AppDio.getInstance();
  late CancelToken baseCancelToken = CancelToken();
  late SharedPreferences prefs = Get.find<PrefsService>().sp.value;

  void cancelAll() {
    baseCancelToken.cancel();
  }
}
