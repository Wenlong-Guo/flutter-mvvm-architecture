import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en_US.dart';
import 'zh_CN.dart';

/// * Description: 翻译语言
/// * Author:      郭文龙
/// * Date:        2022/6/4 17:15
/// * Email:       guowenlong20000@sina.com
class Language extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': chinese,
        'en_US': english,
      };
}
