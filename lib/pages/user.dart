import 'package:flutter/material.dart';
import 'package:prato_final/models/user.dart';
import 'package:prato_final/models/user_manager.dart';
import 'package:provider/provider.dart';

class UserPage extends StatelessWidget {
  GlobalKey<FormState> _key = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              controller: emailController,
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
              controller: passwordController,
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
                if (_key.currentState.validate()) {
                  context.read<UserManager>().sigIn(User(
                        email: emailController.text,
                        password: passwordController.text,
                      ));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
