import 'package:flutter/material.dart';
import 'package:my_project/views/Auth.dart';
//import 'package:xensa_mobile/views/detailsPage.dart';

void main() {
  //runApp(const MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[800],
      ),
      title: 'Xensa Mobile',
      debugShowCheckedModeBanner: false,
      home: const UserLogin(),
    );
  }
}
