import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rallyrun/models/ModelProvider.dart';

final playerSelector = FutureProvider((ref) async {
  var data = await Amplify.DataStore.query(Player.classType);
  var res = Map.fromIterable(data,key: (v)=>v,value: (v)=>false);
  return res;
});

class CreateTournament extends ConsumerWidget {
  CreateTournament({super.key});
  TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final players = ref.watch(playerSelector);
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text('Create Tournament'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tournament Name'),
          TextField(
            controller: _name,
          ),
          Text('Players'),
          Expanded(
              child: ListView(
            children: players.when<List<Widget>>(data: (data)=>data.keys
                .map(
                  (player) => CheckboxListTile(
                      title: Text(player.name??''),
                      value: player.name,
                      onChanged: (val) {
                        print(val!);
                        ref.read(playerSelector.).update((state) {
                          return {...state, player: val};
                        });
                      }),
                ).toList()
                , loading: () => [CircularProgressIndicator()],
    error: (err, stack) => [Text('Error: $err')],)
          )),
        ],
      ),
      floatingActionButton: ElevatedButton(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Submit'),
        ),
        onPressed: () async {
          final newTournament = Tournament(name: _name.text, logo: '(/)');
          players.forEach((key, value) async {
            var player = await Amplify.DataStore.query(Player.classType,
                where: Player.NAME.eq(key));
            var PlayTour =
                PlayerTournament(player: player[0], tournament: newTournament);
            await Amplify.DataStore.save(PlayTour);
          });
          await Amplify.DataStore.save(newTournament);
        },
      ),
    );
  }
}
