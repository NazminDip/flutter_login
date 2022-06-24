import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple),
    title: 'Login App',
    home: const LoginPage(),
    routes: {
      "/login": (context) => const HomePage(),
      "/loginp": (context) => const LoginPage(),
    },
  ));
}
