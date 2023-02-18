import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Shubham";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Catalog App"),
      ),
      body: Center(
        child:  Text(context.runtimeType.toString()),
      ),
      drawer:  MyDrawer(),
    );   
  }
}
