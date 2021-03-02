import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prato_final/models/slider_manager.dart';
import 'package:provider/provider.dart';
class CarouselS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SliderManager>(builder: (__, sliderManager, _) {
      return Container(
        height: 20.0,
        child: CarouselSlider(
          items: sliderManager.sliders.map((e) {
            return Builder(builder: (BuildContext context) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  e.imagem,
                  fit: BoxFit.cover,
                ),
              );
            });
          }).toList(),
          options: CarouselOptions(
            height: 200.0,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
        ),
      );
    });

  }
}