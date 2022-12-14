import 'package:flutter/material.dart';
import 'package:massenger/messenger_screen.dart';
import 'package:massenger/users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MeessengerScreen(),
      home: UsersScreen(),
    );
  }
}
