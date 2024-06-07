import 'package:flutter/material.dart';
import 'package:gotwo_app_user/login/components/background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'GOTWO',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
            SizedBox(height: size.height * 0.05), // ระยะห่างระหว่างข้อความกับรูปภาพ
        Image.asset(
          'assets/images/logo.png', 
          height: size.height * 0.3,// ขนาดสูงของรูปภาพ
        ),
        ],
      ),
    ); // Container
  }
}
