import 'package:flutter/material.dart';
import 'package:flutter_application_1/m/join.dart';
import 'package:flutter_application_1/m/page1.dart';
import 'package:flutter_application_1/m/pickup.dart';
import 'package:flutter_application_1/m/register.dart';
import 'package:flutter_application_1/m/utils.dart';

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
      home:const Register(),
    );
  }
}
