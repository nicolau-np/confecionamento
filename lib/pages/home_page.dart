import 'package:flutter/material.dart';
import 'package:prato_final/widgets/card.dart';
import 'package:prato_final/widgets/carousel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prato do dia"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 2,
          ),
          Expanded(
            child: CarouselS(),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Cards(),
          ),
        ],
      ),
    );
  }
 
}
