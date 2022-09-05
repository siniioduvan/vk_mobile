import 'package:flutter/material.dart';
import 'package:vk_mobile/auth/pages/password_auth_page.dart';
import 'package:vk_mobile/auth/pages/second_auth_page.dart';
import 'auth/pages/first_auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstAuthPage(),
      routes: {
        '/firstAuth': (context) => FirstAuthPage(),
        '/secondAuth': (context) => SecondAuthPage(),
        '/passwordAuth':(context) => PasswordAuthPage()

      },
    );
  }
}
