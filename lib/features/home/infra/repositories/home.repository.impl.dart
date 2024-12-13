import 'package:emeron/features/home/domain/repositories/home.repository.dart';
import 'package:emeron/features/home/infra/datasource/local_home.datasource.dart';

class HomeRepositoryImpl implements IHomeRepository {
  final ILocalHomeDatasource localHomeDatasource;

  HomeRepositoryImpl(this.localHomeDatasource);

  @override
  Future<String> getUserDisplayName() async {
    return await localHomeDatasource.getUserDisplayName();
  }

  @override
  Future<String> getUserEmail() async {
    return await localHomeDatasource.getUserEmail();
  }

  @override
  Future<String> getUserUID() async {
    return await localHomeDatasource.getUserUID();
  }
}
