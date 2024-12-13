import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emeron/core/services/realtimedatabase/realtime_database.service.dart';

class RealtimeDatabaseServiceImpl extends GetxService implements IRealTimeDatabaseService {

  final _firebase = FirebaseFirestore.instance;

  @override
  Future<void> document(document) {
  }

  @override
  Future<DocumentSnapshot<Map<String, dynamic>>> get() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<void> createCollection(String collectionName) {
    // TODO: implement initCollection
    throw UnimplementedError();
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
