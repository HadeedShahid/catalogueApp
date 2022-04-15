import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);
  final int days = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalogue"), ),

      body: Center(
        child: Container(
          child: Text("Welcome to $days of Flutter"),
        ),
      ), drawer: Drawer(),
    );
  }
}


