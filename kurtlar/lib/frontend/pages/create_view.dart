// create sayfasi
import 'package:flutter/material.dart';
import 'package:kurtlar/backend/roles/BaseRole.dart';
import 'package:kurtlar/frontend/models/roles.dart';
import 'package:kurtlar/frontend/models/players.dart';
import 'package:kurtlar/frontend/pages/lookyourRole_view.dart';

import '../models/users.dart';

class create extends StatefulWidget {
  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  int i =0;
  @override

  //initleri muhteşem kullanıyorum uygulama patlatabiilir mi acaba bilmiyorum
  void initState() {
    Role randomRole;
    print( addedRoles.toString()
    );
    for (int l = 0; l<USERS.length; l++){
    
      randomRole = (addedRoles..shuffle()).first;
      USERS[l].Setrole(randomRole);
      if(randomRole.GetTeam == "Mafya") MafiasUser.add(USERS[l]);
      addedRoles.removeAt(0);
    }

    
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(70),
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/Desk.png',
                  )),
              Container(
                width: 1000,
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  "Kur",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Container(
                  width: 300,
                  height: 200,
                  child: Text(
                    "       "
                    "Bütün oyuncular bir birine bakacak şekilde büyük bir çember halinde oturmalıdır. Cihaz oyuncular arasında paslanacak."
                    "Her oyuncu derin devlete veya mafyaya ait bir rol alacak. bu rolü kimseye söyleme."
                    "Her oyuncu rol aldıktan sonra ilk gece başlayacak.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => YourRole(USERS[0],i)));
                  },
                  child: Text("HAZIR"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    primary: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
