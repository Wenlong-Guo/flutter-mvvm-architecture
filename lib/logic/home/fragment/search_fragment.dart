import 'package:flutter_mvvm_architecture/import.dart';
import 'package:flutter_mvvm_architecture/logic/home/home_view_model.dart';

/// * Description:
/// * Author:      郭文龙
/// * Date:        2022/6/27 10:14
/// * Email:       guowenlong20000@sina.com
class SearchPage extends BasePage<HomeViewModel> {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("search"),
    );
  }
}
