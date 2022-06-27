import 'package:flutter_mvvm_architecture/base/base_repository.dart';
import 'package:flutter_mvvm_architecture/bean/anime.dart';
import 'package:flutter_mvvm_architecture/remote/resource.dart';

/// * Description: 主页的仓库
/// * Author:      郭文龙
/// * Date:        2022/6/27 10:12
/// * Email:       guowenlong20000@sina.com
class HomeRepository extends BaseRepository {
  Future<Resource<Anime>> getTopAnime(int page) async {
    return Resource.convert<Anime>(
        () => dio.get<Map<String, dynamic>>("/top/anime",
            queryParameters: {
              'page': page,
            },
            cancelToken: baseCancelToken),
        (value) => Anime.fromJson(value.data));
  }
}
