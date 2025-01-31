import 'package:flutter/material.dart';
import '../models/verification_model.dart';

class VerificationController with ChangeNotifier {
  VerificationModel _verification = VerificationModel();
  String? phoneError;

  VerificationModel get verification => _verification;

  void updatePhoneNumber(String value) {
    _verification.phoneNumber = value;
    phoneError = value.isEmpty ? "Phone number can't be empty" : null;
    notifyListeners();
  }

  bool validatePhoneNumber() {
    updatePhoneNumber(_verification.phoneNumber);
    return phoneError == null;
  }
}
