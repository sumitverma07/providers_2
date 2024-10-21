import 'package:flutter/cupertino.dart';

class Homeproviders with ChangeNotifier {
  bool? eligibility;
  String? eligibilityMessege = "";
  void checkEligibility(int age) {
    if (age >= 18) {
      eligibility = true;
      eligibilityMessege = "You are eligible";
    } else {
      eligibilityMessege = "You are not eligible";
    }
    notifyListeners();
  }
}
