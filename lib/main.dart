import 'package:flutter/material.dart';
// import 'package:gotwo_app_user/m/bank.dart';
// ignore: unused_import
// import 'package:gotwo_app_user/m/join.dart';
// ignore: unused_import
// import 'package:gotwo_app_user/m/pickup.dart';
// ignore: unused_import
// import 'package:gotwo_app_user/m/register.dart';
// import 'package:flutter_application_1/m/join.dart';
// import 'package:flutter_application_1/m/page1.dart';
// import 'package:flutter_application_1/m/pickup.dart';
// import 'package:flutter_application_1/m/register.dart';
// import 'package:flutter_application_1/m/utils.dart';

import 'a/tabbar.dart';
import 'a/confirm_cus.dart';
import 'a/pending_cus.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Tabbar(),
    );
  }
}
