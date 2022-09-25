import 'package:flutter/material.dart';
import 'package:trustwallet/widgets/colors.dart';

class HeaderPage extends StatefulWidget {
  @override
  _HeaderPageState createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 150,
      width: MediaQuery.of(context).size.width,
      color: bottomC,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Portefeuille multi-monnaies 2",
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 27,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: iconHeaderC,
                          borderRadius: BorderRadius.circular(45)),
                      padding: EdgeInsets.all(11),
                      child: Icon(
                        Icons.upload,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Envoyer",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: iconHeaderC,
                          borderRadius: BorderRadius.circular(45)),
                      padding: EdgeInsets.all(11),
                      child: Icon(
                        Icons.download,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Recevoir",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: iconHeaderC,
                          borderRadius: BorderRadius.circular(45)),
                      padding: EdgeInsets.all(11),
                      child: Icon(
                        Icons.receipt,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Acheter",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: iconHeaderC,
                          borderRadius: BorderRadius.circular(45)),
                      padding: EdgeInsets.all(11),
                      child: Icon(
                        Icons.swap_horiz,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Swap",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
