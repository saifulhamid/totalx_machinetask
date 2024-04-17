import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saifulhamid_totalx_machine_task/firebase_options.dart';
import 'package:saifulhamid_totalx_machine_task/provider/otp_verification.dart';
import 'package:saifulhamid_totalx_machine_task/provider/user_listing_page.dart';
import 'package:saifulhamid_totalx_machine_task/screens/enter_phone/enter_phone_page.dart';
import 'package:saifulhamid_totalx_machine_task/screens/user_listing/user_listing_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => OtpVerificationProvider()),
      ChangeNotifierProvider(create: (context) => UserListingProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TotalX machine task',
      home: EnterPhonePage(),
    );
  }
}
