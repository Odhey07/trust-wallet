import 'package:flutter/material.dart';
import 'package:trustwallet/pages/dapps.dart';
import 'package:trustwallet/pages/decouvrir.dart';
import 'package:trustwallet/pages/parametres.dart';
import 'package:trustwallet/pages/portefeuille.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //initialisation de la liste des pages
  int currentTab = 0;
  late final List pages = [
    //liste de toutes les pages du menu
    PortefeuillePage(),
    DecouvrirPage(),
    DappsPage(),
    ParametresPage(),
  ];
  //initialisation de la fonction pour la navigation entre les pages
  final PageStorageBucket Bucket = PageStorageBucket();
  Widget currentScreen = PortefeuillePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: Bucket,
        child: pages[currentTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(35, 47, 61, 1),
        onTap: (int index){
          setState(() {
            currentTab= index;
          });
        },
        showUnselectedLabels: true,
        unselectedItemColor: Colors.white54,
        fixedColor: Colors.blueAccent,
        currentIndex: currentTab,
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.shield),
            label: 'Portefeuille',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Découvrir',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_sharp),
              label: 'Dapps',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Parametres',
          ),
        ],
      ),
    );
  }
}
