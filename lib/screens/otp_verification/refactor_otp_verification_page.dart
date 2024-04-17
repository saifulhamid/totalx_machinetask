import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../user_listing/user_listing_page.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserListingPage()));
            },
            child: const Text("Verify",
                style: TextStyle(letterSpacing: 1, color: Colors.white))));
  }
}

class OtpTextField extends StatelessWidget {
  const OtpTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OTPTextField(
      length: 5,
      width: MediaQuery.of(context).size.width,
      fieldWidth: 50,
      style: const TextStyle(
          fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.box,
      onChanged: (value) {},
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
    );
  }
}

class ImageInOtpVerificationPage extends StatelessWidget {
  const ImageInOtpVerificationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/otp_verification_page.png"),
                fit: BoxFit.cover)),
        width: 200,
        height: 200,
      ),
    );
  }
}