import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  final TextEditingController dropController;

  const OtherPage({Key? key, required this.dropController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: dropController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter something',
            ),
          ),
        ),
      ),
    );
  }
}
