import 'package:flutter/material.dart';
import 'package:gotwo_app_user/constants.dart';
import 'package:gotwo_app_user/screens/login/login1.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
  
      ),
      home: const LoginScreen(),
    );
  }
}
