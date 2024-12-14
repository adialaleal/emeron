import 'package:cloud_firestore/cloud_firestore.dart';

abstract class IRealTimeDatabaseService {
  Future<void> document({required String collection, required String document, required Map<String, dynamic> data});
  Future<QuerySnapshot<Object?>> get({required String collection});
}
