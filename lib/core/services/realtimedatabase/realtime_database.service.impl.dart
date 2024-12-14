import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emeron/core/services/realtimedatabase/realtime_database.service.dart';

class RealtimeDatabaseServiceImpl extends GetxService implements IRealTimeDatabaseService {
  final FirebaseFirestore _firebase;

  RealtimeDatabaseServiceImpl({FirebaseFirestore? firestore}) : _firebase = firestore ?? FirebaseFirestore.instance;

  @override
  Future<void> document(
      {required String collection, required String document, required Map<String, dynamic> data}) async {
    await _createCollection(collection).doc(document).set(data);
  }

  @override
  Future<QuerySnapshot<Object?>> get({
    required String collection,
  }) {
    return _createCollection(collection).get();
  }

  CollectionReference _createCollection(String collectionName) {
    return _firebase.collection(collectionName);
  }
}
/*
var query = await FirebaseFirestore.instance.collection('users').doc(email).get(const GetOptions());

    if (query.exists) {
      await FirebaseFirestore.instance.collection('users').doc(email).update({
        'tokens': FieldValue.arrayUnion([fcmToken]),
      });
    } else {
      await FirebaseFirestore.instance.collection('users').doc(email).set({
        'tokens': FieldValue.arrayUnion([fcmToken]),
      });
    }

    */
