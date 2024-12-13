import 'package:emeron/core/services/storage/storage.service.dart';
import 'package:emeron/features/home/infra/datasource/local_home.datasource.dart';

class LocalHomeDatasourceImpl implements ILocalHomeDatasource {
  final IStorageService _storageService;

  LocalHomeDatasourceImpl(this._storageService);

  @override
  Future<String> getUserDisplayName() async {
    return await _storageService.read('user_display_name');
  }

  @override
  Future<String> getUserEmail() async {
    return await _storageService.read('user_email');
  }

  @override
  Future<String> getUserUID() async {
    return await _storageService.read('user_uid');
  }
}
