import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:rallyrun/models/ModelProvider.dart';

class AddPlayer extends StatelessWidget {
  AddPlayer({super.key});

  TextEditingController _name = TextEditingController();
  TextEditingController _mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextField(
          controller: _name,
        ),
        TextField(
          controller: _mobile,
        ),
        ElevatedButton(
            onPressed: () {
              final newPlayer = Player(name: _name.text, phone: _mobile.text);
              Amplify.DataStore.save(newPlayer);
            },
            child: Text('Submit'))
      ],
    ));
  }
}
