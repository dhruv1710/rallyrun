import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, idx) {
        return ListTile();
      }),
    );
  }
}
