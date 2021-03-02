import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Prato extends ChangeNotifier {
  final Firestore firestore = Firestore.instance;

  String id;
  String bairro;
  String detalhes;
  String foto_tia;
  String nome_prato;
  String nome_tia;
  num preco;
  num telefone;
  String url_imagem;

  Prato();
  Prato.fromDocument(DocumentSnapshot doc) {
    id = doc.documentID;
    bairro = doc.data["bairro"];
    detalhes = doc.data["detalhes"];
    foto_tia = doc.data["foto_tia"];
    nome_prato = doc.data["nome_prato"];
    nome_tia = doc.data["nome_tia"];
    preco = doc.data["preco"];
    telefone = doc.data["telefone"];
    url_imagem = doc.data["url_imagem"];
  }

  Future<void> save(bairroP, detalhesP, foto_tiaP, nome_pratoP, nome_tiaP,
      precoP, telefoneP, url_imagemP) async {
    await firestore.collection("pratos").document().setData({
      'bairro': bairroP,
      'detalhes': detalhesP,
      'foto_tia': foto_tiaP,
      'nome_prato': nome_pratoP,
      'nome_tia': nome_tiaP,
      'preco': precoP,
      'telefone': telefoneP,
      'url_imagem': url_imagemP,
    });
  }
}
