import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../otp_verification/otp_verification_page.dart';

SizedBox getOtpButton(BuildContext context, TextEditingController phoneNumberController) {
  return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: () {
            if (phoneNumberController.text.length == 10) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpVerificationPage(
                        userPhoneNumber:
                        phoneNumberController.text),
                  ));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content:
                      Text("Enter valid mobile number")));
            }
          },
          child: const Text("Get OTP",
              style: TextStyle(
                  letterSpacing: 1, color: Colors.white))));
}

RichText termsAndConditionsText() {
  return RichText(
    text: const TextSpan(
      style: TextStyle(
          fontSize: 15, letterSpacing: 1, color: Colors.black),
      children: <TextSpan>[
        TextSpan(
          text: "By continuing, I agree to TotalX's ",
        ),
        TextSpan(
          text: "Terms and condition",
          style: TextStyle(color: Colors.blue),
        ),
        TextSpan(
          text: " and ",
        ),
        TextSpan(
          text: "Privacy and Policy",
          style: TextStyle(color: Colors.blue),
        ),
      ],
    ),
  );
}

TextField enterPhoneNumberTextField(TextEditingController phoneNumberController) {
  return TextField(
    controller: phoneNumberController,
    keyboardType: const TextInputType.numberWithOptions(),
    decoration: InputDecoration(
      label: const Row(
        children: [
          Text(
            "Enter Phone Number",
            style:
            TextStyle(color: Colors.grey, letterSpacing: 1),
          ),
          Padding(padding: EdgeInsets.all(3.0)),
          Text('*', style: TextStyle(color: Colors.red)),
        ],
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300),
        // Change border color here
        borderRadius:
        const BorderRadius.all(Radius.circular(10)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade500),
        // Change border color here
        borderRadius:
        const BorderRadius.all(Radius.circular(10)),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}

Text enterPhoneText() {
  return Text(
    "Enter Phone Number",
    style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 1),
  );
}

Center image() {
  return Center(
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage("assets/images/first_page.png"),
          fit: BoxFit.cover,
        ),
      ),
      width: 200,
      height: 200,
    ),
  );
}