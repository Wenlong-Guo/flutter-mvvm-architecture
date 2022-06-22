import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'base_view_model.dart';

/// * Description: Page的基类
/// * Author:      郭文龙
/// * Date:        2022/6/22 3:10
/// * Email:       guowenlong20000@sina.com
abstract class BasePage<VM extends BaseViewModel> extends GetView<VM> {
  const BasePage({Key? key}) : super(key: key);
}
