import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:realestate_ui/firebase_options.dart';
import 'package:realestate_ui/pages/login_page/auth_page.dart';
import 'package:realestate_ui/pages/login_page/login_page.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real-Estate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const AuthPage(),
    );
  }
}
