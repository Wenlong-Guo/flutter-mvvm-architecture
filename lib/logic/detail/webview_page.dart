import 'package:flutter_mvvm_architecture/import.dart';
import 'package:flutter_mvvm_architecture/logic/detail/webview_view_model.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

/// * Description: WebView页面
/// * Author:      郭文龙
/// * Date:        2022/6/29 1:10
/// * Email:       guowenlong20000@sina.com
class WebViewPage extends BasePage<WebViewViewModel>{

  static const route = '/web_view';

  const WebViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: const WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl:
          "https://myanimelist.net/anime/43608/Kaguya-sama_wa_Kokurasetai__Ultra_Romantic",
        ));
  }
}