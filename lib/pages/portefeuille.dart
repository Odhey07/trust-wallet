import 'package:flutter/material.dart';
import 'package:trustwallet/pages/portefeuille/header.dart';
import 'package:trustwallet/widgets/colors.dart';

class PortefeuillePage extends StatefulWidget {
  @override
  _PortefeuillePageState createState() => _PortefeuillePageState();
}

class _PortefeuillePageState extends State<PortefeuillePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bottomC,
          title: Text(
            "0,00 \$",
            style: TextStyle(color: Colors.white70),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_sharp,
              size: 27,
              color: textC,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_road_sharp,
                  size: 27,
                  color: textC,
                ))
          ],
        ),
        body: Column(
          children: [
            HeaderPage(),
          ],
        ));
  }
}
