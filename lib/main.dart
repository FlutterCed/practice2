import 'package:flutter/material.dart';
import 'pages/textWidget.dart';
import 'pages/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'practice2',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const TextWidget(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

