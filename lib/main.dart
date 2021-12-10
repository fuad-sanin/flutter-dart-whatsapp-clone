import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Colors.teal[900],
      ),
      home: const HomePage(),
    );
  }
  
}


