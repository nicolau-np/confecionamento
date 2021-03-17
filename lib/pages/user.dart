import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  GlobalKey<FormState> _key = GlobalKey();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

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
              controller: email,
              validator: (value) {
                if (value.isEmpty) {
                  return "Email obrigatorio";
                }
              },
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            TextFormField(
              controller: password,
              validator: (value) {
                if (value.isEmpty) {
                  return "Palavra-passe obrigatoria";
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
                  if(_key.currentState.validate()){
                      
                  }
              },
            ),
          ],
        ),
      ),
    );
  }
}
