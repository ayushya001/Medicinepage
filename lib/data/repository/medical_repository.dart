import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:medicalpage/data/models/medical_model.dart';

class MedicalStoreRepository {
  final _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<MedicalStoreModel>> getAllMedicalStores() async {
    final List<MedicalStoreModel> medicalStoreList = [];
    try {
      final allMedicalStores =
          await _firebaseFirestore.collection("medicalstore").get();
      for (var element in allMedicalStores.docs) {
        medicalStoreList.add(
          MedicalStoreModel.fromMap(element.data()),
        );
      }
      print(medicalStoreList);
      return medicalStoreList;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print('exception');
      }
      return medicalStoreList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
