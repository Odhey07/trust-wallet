import 'package:flutter/material.dart';
import 'package:trustwallet/widgets/colors.dart';

class ParametresPage extends StatefulWidget {
  @override
  _ParametresPageState createState() => _ParametresPageState();
}

class _ParametresPageState extends State<ParametresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(26,34,45,1),
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text("Parametres"),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(26, 34, 45, 1),
            padding: EdgeInsets.only(left: 8, right: 8, top: 15, bottom: 15),
            child: Row(
              children: [
                Icon(
                  Icons.wallet,
                  color: Colors.green,
                  size: 35,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Portefeuilles",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'Portefeuilles multi-monnaie 2',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 15,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.white54,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
