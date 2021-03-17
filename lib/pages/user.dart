import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  GlobalKey<FormState> _key = GlobalKey();
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Account"),
      ),
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              controller: username,
              validator: (value) {
                if (value.isEmpty) {
                  return "nome de usuario";
                }
              },
              decoration: InputDecoration(
                hintText: "Nome de Usuário",
              ),
            ),
            TextFormField(
              controller: password,
              validator: (value) {
                if (value.isEmpty) {
                  return "palavra-passe";
                }
              },
              decoration: InputDecoration(
                hintText: "Palavra-Passe",
              ),
              obscureText: true,
            ),
            RaisedButton(
              child: Text("Logar"),
              color: Colors.red,
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
