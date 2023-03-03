import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List controls = [
  [
    'Add Player',
    '/add-player',
  ]
];

class ControlPanel extends StatelessWidget {
  const ControlPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: controls
            .map((control) => InkWell(
                onTap: () => context.go(control[1]),
                child: Card(
                  child: Center(child: Text(control[0])),
                )))
            .toList(),
      ),
    );
  }
}
