import 'package:flutter/material.dart';
import 'package:saifulhamid_totalx_machine_task/screens/enter_phone/refactor_enter_phone_page.dart';

import '../otp_verification/otp_verification_page.dart';

class EnterPhonePage extends StatelessWidget {
  EnterPhonePage({super.key});

  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 120),
                  image(),
                  const SizedBox(height: 50),
                  enterPhoneText(),
                  const SizedBox(height: 20),
                  enterPhoneNumberTextField(phoneNumberController),
                  const SizedBox(height: 20),
                  termsAndConditionsText(),
                  const SizedBox(height: 20),
                  getOtpButton(context, phoneNumberController)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
