import 'package:flutter/material.dart';
import '../components/customDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Aquasys', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      drawer: const CustomDrawer(),
    );
  }
}