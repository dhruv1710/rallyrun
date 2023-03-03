import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rallyrun/models/ModelProvider.dart';

class Tournaments extends StatelessWidget {
  const Tournaments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RallyRun'),
      ),
      body: Column(
        children: [
          Text(
            'Tournaments',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          StreamBuilder(
              stream: Amplify.DataStore.observeQuery(Tournament.classType),
              builder: (context, snapshot) {
                List? tours = snapshot.data?.items;
                return snapshot.hasData == true
                    ? Expanded(
                        child: ListView.builder(
                            itemCount: tours?.length,
                            itemBuilder: (context, idx) {
                              return InkWell(
                                onTap: () {
                                  context.go('/tournaments/${tours?[idx].id}');
                                },
                                child: Card(
                                  child: Container(
                                    height: 250,
                                    width: double.infinity,
                                    // ignore: prefer_const_constructors
                                    child: Center(
                                      child: Text(tours?[idx].name ??
                                          'Rio Tennis League'),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    : CircularProgressIndicator();
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.add),
          label: Text('Create Tournament'),
          onPressed: () async {
            context.go('/create-tournament');
          }),
    );
  }
}
