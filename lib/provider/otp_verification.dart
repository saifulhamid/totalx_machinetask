import 'dart:async';
import 'package:flutter/material.dart';

class OtpVerificationProvider extends ChangeNotifier {
  int countDown = 30;
  late Timer timer;

  OtpVerificationProvider() {
    startCountdown();
  }

  void startCountdown() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (countDown > 0) {
        countDown--;
        notifyListeners();
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
