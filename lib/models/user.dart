import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class User extends ChangeNotifier{
  String email;
  String password;
}