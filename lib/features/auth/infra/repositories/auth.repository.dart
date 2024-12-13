import 'package:get/get.dart';
import 'package:emeron/core/errors/datasource_execptions.dart';
import 'package:emeron/core/services/exceptions/api.exceptions.dart';
import 'package:emeron/features/auth/infra/mappers/token.mapper.dart';
import 'package:emeron/features/auth/domain/entities/token.entity.dart';
import 'package:emeron/features/auth/domain/repositories/iauth.repository.dart';
import 'package:emeron/features/auth/infra/dto/requests/signin_request.dto.dart';
import 'package:emeron/features/auth/infra/datasource/auth/iauth.datasource.dart';
import 'package:emeron/features/auth/infra/datasource/auth/local_auth.datasource.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final IAuthDatasource remoteDatasource;
  final LocalAuthDatasource localDatasource;

  AuthRepositoryImpl({
    required this.remoteDatasource,
    required this.localDatasource,
  });

  @override
  Future<TokenEntity> signIn(String login, String password) async {
    try {
      final dto = SignInRequestDTO(login: login, password: password);

      final userDTO = await remoteDatasource.signIn(dto);
      await localDatasource.saveAuthData(userDTO);

      return TokenMapper.fromDTO(userDTO);
    } on DatasourceException catch (e) {
      print(e);
      throw ApiException(message: e.message);
    } catch (e) {
      print(e);
      throw ApiException(message: 'login_failed_message'.tr);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await remoteDatasource.signOut();
      await localDatasource.clearAuthData();
    } catch (e) {
      throw ApiException(message: 'logout_failed_message'.tr);
    }
  }

  @override
  Future signInWithFirebase(String login, String password) async {
    try {
      final dto = SignInRequestDTO(login: login, password: password);

      final userDTO = await remoteDatasource.signInFirebaseEmail(dto);
      await localDatasource.saveUserCredentials(userDTO);

      return userDTO;
    } catch (e) {
      print(e);
      throw ApiException(message: 'login_failed_message'.tr);
    }
  }
}
