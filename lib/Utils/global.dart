import 'package:flutter/material.dart';

Color color_data = Colors.black;
IconData icon_data = Icons.add;

List<Color> color_list = [
  Colors.black,
  Colors.blue,
  Colors.red,
  Colors.limeAccent,
  Colors.pinkAccent,
  Colors.grey,
  Colors.cyanAccent
];

List<IconData> icon_list = [
  Icons.add,
  Icons.access_alarms_rounded,
  Icons.account_box,
  Icons.add_alert_rounded,
  Icons.add_circle,
  Icons.ad_units_sharp,
  Icons.account_balance_sharp
];

Container color_icon_title(double height, double width, String name) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: height / 60),
    height: height / 12,
    width: width,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 5),
      ],
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      name,
      style: TextStyle(
          color: Color(0xffB2B2B2),
          fontSize: height / 34,
          fontWeight: FontWeight.w500),
    ),
  );
}
