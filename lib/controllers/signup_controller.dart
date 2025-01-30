import 'package:flutter/material.dart';
import '../models/signup_model.dart';


class UserController with ChangeNotifier {
  UserModel _user = UserModel();

  String? nameError;
  String? emailError;
  String? passwordError;
  String? phoneError;

  UserModel get user => _user;

  void updateName(String value) {
    _user.name = value;
    nameError = value.isEmpty ? "Name can't be empty" : null;
    notifyListeners();
  }

  void updateEmail(String value) {
    _user.email = value;
    emailError = value.isEmpty ? "Email can't be empty" : null;
    notifyListeners();
  }

  void updatePassword(String value) {
    _user.password = value;
    passwordError = value.isEmpty ? "Password can't be empty" : null;
    notifyListeners();
  }

  void updatePhoneNumber(String value) {
    _user.phoneNumber = value;
    phoneError = value.isEmpty ? "Phone number can't be empty" : null;
    notifyListeners();
  }

  bool validateSignUp() {
    updateName(_user.name);
    updateEmail(_user.email);
    updatePassword(_user.password);

    return nameError == null && emailError == null && passwordError == null;
  }

  bool validatePhoneNumber() {
    updatePhoneNumber(_user.phoneNumber);
    return phoneError == null;
  }
}
