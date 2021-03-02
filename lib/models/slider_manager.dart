import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:prato_final/models/slider.dart';

class SliderManager extends ChangeNotifier {
  List<Slider> sliders = [];
  final firebase = Firestore.instance;

  SliderManager() {
    getSliders();
  }

  int getCountSlider() {
    return sliders.length;
  }

  Future<Slider> getSliders() async {
  
    final lista_sliders = await firebase.collection("slider").getDocuments();
   sliders.clear();
    sliders =
        lista_sliders.documents.map((e) => Slider.fromDocument(e)).toList();
    notifyListeners();
  }
}
