import 'package:firebase_auth/firebase_auth.dart';
import 'package:emeron/core/services/storage/storage.service.dart';
import 'package:emeron/features/auth/infra/dto/responses/user_response.dto.dart';

class LocalAuthDatasource {
  final IStorageService _storageService;

  LocalAuthDatasource(this._storageService);

  Future<void> saveAuthData(UserResponseDTO dto) async {
    await _storageService.write('auth_token', dto.token);
    await _storageService.write('token_expiration', dto.expiresAt);
  }

  Future<void> clearAuthData() async {
    await _storageService.delete('auth_token');
    await _storageService.delete('token_expiration');
  }

  Future<String?> getAuthToken() async {
    return await _storageService.read('auth_token');
  }

  Future<String?> getTokenExpiration() async {
    return await _storageService.read('token_expiration');
  }

  Future<void> saveUserCredentials(UserCredential user) async {
    await _storageService.write('user_id', user.user!.uid);
    await _storageService.write('user_email', user.user!.email);
    await _storageService.write('user_name', user.user!.displayName);
  }

  Future<void> clearUserCredentials() async {
    await _storageService.delete('user_id');
    await _storageService.delete('user_email');
    await _storageService.delete('user_name');

  }
}
