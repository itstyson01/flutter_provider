import 'package:flutter/foundation.dart';

class HomePageProvider with ChangeNotifier {
  bool? isElligible;
  String? eligibilityMessage;
  void checkEligibility(int age) {
    if (age >= 18) {
      isElligible = true;
      eligibilityMessage = "You are Eligible";
      notifyListeners();
    } else {
      isElligible = false;
      eligibilityMessage = "You are not Eligible";
      notifyListeners();
    }
  }
}
