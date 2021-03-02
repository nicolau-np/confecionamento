import 'package:flutter/material.dart';

class FavoritoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routes =
        ModalRoute.of(context).settings.arguments as Map<Object, Object>;

    return Scaffold(
      appBar: AppBar(
        title: Text("Favoritos"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Favoritos"),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/novo');
              },
              child: Text("Nova Tia"),
            ),
          ],
        ),
      ),
    );
  }
}
