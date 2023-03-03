import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:rallyrun/models/ModelProvider.dart';

class TournamentInfo extends StatelessWidget {
  TournamentInfo(this.tourid, {super.key});
  String? tourid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text('Players'),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: Amplify.DataStore.query(PlayerTournament.classType,
                where: PlayerTournament.TOURNAMENT.eq(tourid)),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              List? players = snapshot.data;
              print(players);
              return players != null
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: players?.length,
                          itemBuilder: (context, idx) {
                            return Column(
                              children: [
                                ListTile(
                                  title: Text(players?[idx].player.name ?? ''),
                                ),
                                Divider()
                              ],
                            );
                          }))
                  : CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
