import 'package:flutter/material.dart';
import 'package:prato_final/models/prato.dart';
import 'package:prato_final/models/prato_manager.dart';
import 'package:provider/provider.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PratoManager>(
      builder: (__, pratoManager, _) {
        return Expanded(
          child: ListView.builder(
            itemCount: pratoManager.getCountPratos(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(7),
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            pratoManager.pratos[index].foto_tia.toString(),
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        title: Text(
                          "Tia " + pratoManager.pratos[index].nome_tia,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                        subtitle: Text(pratoManager.pratos[index].detalhes),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(0),
                        child: Image.network(
                          pratoManager.pratos[index].url_imagem,
                          fit: BoxFit.fill,
                          height: 120,
                          width: 350,
                        ),
                      ),
                      Container(
                        // make buttons use the appropriate styles for cards
                        child: ButtonBar(
                          children: <Widget>[
                            Text(
                              pratoManager.pratos[index].preco.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            FlatButton(
                              child: const Text('Explorar'),
                              onPressed: () {
                                final prato = pratoManager.pratos[index];

                                Navigator.of(context)
                                    .pushNamed('/detalhes_prato', arguments: prato);
                              },
                              textColor: Colors.white,
                              color: Colors.amber,
                            ),
                            FlatButton(
                              child: const Text('Reservar'),
                              onPressed: () {/* ... */},
                              textColor: Colors.white,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
