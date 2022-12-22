import 'package:kurtlar/backend/roles/BaseRole.dart';

class Polat extends Role {
  final String _MissionText = "Birinin rolünü açığa çıkart";
  final String _RoleDefinition =
      "Sen polat alemdarsın ve derin devlete bağlısına zamanı geldiğinde mafyaların kim olduğunu bulmak için yeteneklerini kullanacaksın ve devletine yarıdm edeceksin yakalanmamaya dikkat et";

  String _Name = "Polat";
  final String _team = "Derin Devlet";
  bool _injail = false;
  bool _isDead = false;
  int _vote = 0;

  @override
  String get GetMissionText => _MissionText;

  @override
  String get GetName => _Name;

  @override
  String get GetRoleDefiniton => _RoleDefinition;

  @override
  String get GetTeam => _team;

  @override
  set SetName(String name) {
    this._Name = name;
  }

  @override
  set SetInJail(bool value) {
    this._injail = value;
  }

  @override
  bool get GetinJail => _injail;

  //Polat bastığı kişinin hangi takımda olduğunu görecek
  @override
  void DoMission(Role someone) {
    print(someone.GetTeam); //Bu fonsiyon String return edecek
  }

  @override
  bool get GetDead => _isDead;

  @override
  set SetVote(int value) {
    this._vote = value;
  }

  @override
  void incrementVote() {
    this._vote++;
  }
}
