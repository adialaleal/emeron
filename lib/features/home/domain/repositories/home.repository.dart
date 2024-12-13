abstract class IHomeRepository {
  Future<String> getUserDisplayName();
  Future<String> getUserEmail();
  Future<String> getUserUID();
}
