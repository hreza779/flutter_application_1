import 'package:flutter/material.dart';

import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // چارچوب کلی برنامه
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
