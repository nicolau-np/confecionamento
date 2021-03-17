import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class User extends ChangeNotifier{
  User({this.email, this.password});
  String email;
  String password;
}