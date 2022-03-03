import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "faizan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
