import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:prato_final/models/prato.dart';

class PratoManager extends ChangeNotifier {
  PratoManager() {
    getPratos();
  }
  final firebase = Firestore.instance;
  List<Prato> pratos = [];

  int getCountPratos() {
    return pratos.length;
  }

  Future<void> getPratos() async {
    pratos.clear();
    final lista_pratos = await firebase.collection("pratos").getDocuments();
    pratos = lista_pratos.documents.map((e) => Prato.fromDocument(e)).toList();

    notifyListeners();
  }
}
