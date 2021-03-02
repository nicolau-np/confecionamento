import 'package:flutter/material.dart';
import 'package:prato_final/models/prato.dart';

class DetalhesPrato extends StatefulWidget {
  @override
  _DetalhesPratoState createState() => _DetalhesPratoState();
}

class _DetalhesPratoState extends State<DetalhesPrato> {
  @override
  Widget build(BuildContext context) {
    final prato = ModalRoute.of(context).settings.arguments as Prato;
    return Scaffold(
      appBar: AppBar(
        title: Text("${prato.nome_prato}"),
      ),
      body: Container(
        child: Text("hello"),
      ),
    );
  }
}
