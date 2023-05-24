import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Ankit')),
        backgroundColor:const Color.fromARGB(228, 0, 8, 7),
      ),
      body:const Material(
        child: Center(
          child: Text('Ankit'),
        ),
      ),
    );
  }
}