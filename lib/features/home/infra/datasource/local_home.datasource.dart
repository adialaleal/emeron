abstract class ILocalHomeDatasource {
  Future<String> getUserDisplayName();
  Future<String> getUserEmail();
  Future<String> getUserUID();
}
