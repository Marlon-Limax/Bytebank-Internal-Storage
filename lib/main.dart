import 'package:flutter/material.dart';

void main() {
  runApp(const ByteBankApp());
}

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: Column(children: [
          Image.asset('images/bytebank_logo.png'),
          Container(
            height: 90,
            width: 160,
            color: Colors.green.shade400,
            child: Column(
              children: const [Icon(Icons.people), Text('Contacts')],
            ),
          )
        ]),
      ),
    );
  }
}
