import 'package:flutter/material.dart';

Container onglet( Icon iconO, Color couleurO, Text textO ) {
  return Container(
    color: Color.fromRGBO(26, 34, 45, 1),
    padding: EdgeInsets.only(left: 8, right: 8, top: 15, bottom: 15),
    child: Row(
      children: [
        iconO,
        SizedBox(
          width: 5,
        ),
        Text(
          '$textO',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        Spacer(),
        Icon(
          Icons.chevron_right,
          color: Colors.white54,
        ),
      ],
    ),
  );
}
