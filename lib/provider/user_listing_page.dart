import 'package:flutter/material.dart';

class UserListingProvider with ChangeNotifier {
  String _selectedOption = "All";

  String get selectedOption => _selectedOption;

  void setSelectedOption(String option) {
    _selectedOption = option;
    notifyListeners();
  }
}