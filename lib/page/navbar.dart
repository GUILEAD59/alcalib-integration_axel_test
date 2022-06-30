import 'package:alcalib/page/home.dart';
import 'package:alcalib/page/profil.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {

  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }

  int indexNow = 0;
  final tabChange = [
    home(),
    home(),
    profil(),
  ];///Ajouter vos pages dans la liste
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: tabChange[indexNow],///Remplacer [0] par indexNow
          bottomNavigationBar: Container(
                   decoration: BoxDecoration(border: Border(top: BorderSide(color: Color.fromRGBO(220, 220, 220, 100)))),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: GNav(
                  padding: EdgeInsets.all(16),
                  gap: 13,
                    selectedIndex: indexNow,
                    tabs:
                    [
                      GButton(
                        iconSize: 40,

                        backgroundColor: Colors.purple.shade100,
                          text: " Acceuil",
                          icon: Icons.home),

                      GButton(
                          iconSize: 40,
                          backgroundColor: Colors.purple.shade100,
                          text: " Mes livres",
                          icon: Icons.book),

                      GButton(
                          iconSize: 40,
                          backgroundColor: Colors.purple.shade100,
                          text: " Mon compte",
                          icon: Icons.person),
                    ],
                  onTabChange: (index)
                  {
                    setState(() {
                      indexNow = index;
                    });
                  }
                ),
              ),
            ),
      ),
    );
  }
}
