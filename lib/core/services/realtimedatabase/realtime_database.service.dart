import 'package:cloud_firestore/cloud_firestore.dart';

abstract class IRealTimeDatabaseService {
  Future<void> initCollection(String collectionName);
  Future<void> document(dynamic document);
  Future<DocumentSnapshot<Map<String, dynamic>>> get();
}
