import 'package:kurtlar/frontend/models/players.dart';

import 'BaseRole.dart';

class mafiamen extends Role {
  final String _MissionText = "görevin yok";
  final String _RoleDefinition = "Basit bir mafya adamısın";

  String _Name = "Memur";
  final String _team = "Mafya";
  final int countOfVote = 1;
  bool muted = false;
  int count = 0;

  @override
  bool DoMission(Players player) {
    // TODO: implement DoMission
    throw UnimplementedError();
  }

  @override
  String get GetMissionText => _MissionText;

  @override
  String get GetName => _Name;

  @override
  String get GetRoleDefiniton => _RoleDefinition;

  @override
  String get GetTeam => _team;
  @override
  int get Getcount => count;

  void increment() {
    if (count != 4) count++;
  }

  void decrase() {
    if (count != 0) {
      count--;
    }
  }
}
