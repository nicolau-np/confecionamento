import 'package:cloud_firestore/cloud_firestore.dart';

class Slider {
  String id;
  String descricao;
  String imagem;
  
  Slider();

  Slider.fromDocument(DocumentSnapshot doc) {
    id = doc.documentID;
    descricao = doc.data["descricao"];
    imagem = doc.data["imagem"];
  }
}
