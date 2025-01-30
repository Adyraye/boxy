import 'package:flutter/material.dart';

import '../models/login_model.dart';

class AuthController extends ChangeNotifier {
  final AuthModel _authModel = AuthModel();

  String? get emailError => _authModel.validateEmail();
  String? get passwordError => _authModel.validatePassword();

  void setEmail(String email) {
    _authModel.email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _authModel.password = password;
    notifyListeners();
  }

  void signIn() {
    if (emailError == null && passwordError == null) {
    } else {

    }
  }

  void signInWithGoogle() {
  }
}
