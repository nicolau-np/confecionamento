import 'package:firebase_auth/firebase_auth.dart';
import 'package:prato_final/models/user.dart';

class UserManager {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> sigIn(User user) async{
    final AuthResult authResult = await auth.signInWithEmailAndPassword(email: user.email, password: user.password);
  }
}
