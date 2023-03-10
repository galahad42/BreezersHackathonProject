import 'package:flutter/material.dart';
import 'package:guardian/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:guardian/search/search.dart';
import 'firebase_options.dart';
import './LoginScreen/login_page.dart';
import './new_entry/new_entry.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    name: "gajar",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      //enter credentials email    - breezers.wins@gmail.com
      //                  password - 12345678
    );
  }
}
