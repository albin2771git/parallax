import 'package:flutter/material.dart';
import 'list.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue,appBarTheme: const AppBarTheme(
        color: darkBlue,
        elevation: 0
      )),
      debugShowCheckedModeBanner: false,
      home: const ListOfItems()
    );
  }
}
