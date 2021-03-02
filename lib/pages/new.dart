import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:prato_final/models/prato.dart';

class NovaTia extends StatefulWidget {
  @override
  _NovaTiaState createState() => _NovaTiaState();
}

class _NovaTiaState extends State<NovaTia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              var prato = context.read<Prato>();
              //aqui nos parametros vai os valores dos formTextField
              prato.save(
                'bairro',
                'detalhes',
                'foto_tia',
                'nome_prato',
                'nome_tia',
                'preco',
                'telefone',
                'url_imagem',
              );
              //fim
            },
            child: Text("salvar"),
          )
        ],
      ),
    );
  }
}
