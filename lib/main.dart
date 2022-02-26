import 'package:flutter/material.dart';
import 'package:flutter_application/Pages/login_page.dart';

import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/homepage",
      routes: {
        "/": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
        "/loginpage": (context) => LoginPage()
      },
    );
  }
}
