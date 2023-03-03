import 'package:go_router/go_router.dart';
import 'package:rallyrun/users/admin/controls/create_tour.dart';
import 'package:rallyrun/users/common/tournaments.dart';
import 'package:rallyrun/users/player/tournament_info.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return Tournaments();
        },
        routes: [
          GoRoute(
            path: 'create-tournament',
            builder: (context, state) {
              return CreateTournament();
            },
          ),
          GoRoute(
              path: 'tournaments/:tourid',
              builder: (context, state) =>
                  TournamentInfo(state.params['tourid']))
        ]),
  ],
);
