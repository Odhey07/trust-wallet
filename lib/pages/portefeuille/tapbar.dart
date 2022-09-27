import 'package:flutter/material.dart';
import 'package:trustwallet/widgets/colors.dart';

class TabBarPage extends StatefulWidget{
  @override
  _TabBarPageState createState()=> _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {

  @override

  Widget build(BuildContext context) {
    /**
     * le DefaultTabControllelr permet de faire une barre de navigation en haut
     * avec un indiceur en bas selon la page
     *
     * le length permet de donner le nombre d'icon dans notre menu
     * dans le scaffolf on met appbar et le bottom contient un TabBar pour le nombre
     * de Tab en fonction de le length
     */

   late  TabController _tabcontroller;
    return Expanded(
      child: Scaffold(
        backgroundColor: contenuC,
          body: Column(
            children: [
              Container(
                height: 50,
                width: double.maxFinite,
                child: TabBar(
                  controller: _tabcontroller = TabController(length: 2, vsync: this),
                    indicatorColor: iconHeaderC,
                    indicatorWeight: 3,
                    tabs: [
                      Tab(text: 'Jetons',),
                      Tab(text: 'NFTs')
                    ]),
              ),
              Container(height: 200,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabcontroller,
                  children: [
                    Text("jetons"),
                    Text("NTFs"),
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }

}