import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  //get un solo documento
  Future<Map<String, dynamic>> getUserProfile(String uid) async {
    return await _db
        .collection('users')
        .doc(uid)
        .get()
        .then((DocumentSnapshot doc) => doc.data());
  }
}
