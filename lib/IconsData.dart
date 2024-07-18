import 'package:flutter/material.dart';

class IconsData extends StatefulWidget {
  const IconsData({super.key});

  @override
  State<IconsData> createState() => _IconsDataState();
}

class _IconsDataState extends State<IconsData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 3,
        backgroundColor: Color(0xffBFBFBF),
        centerTitle: true,
        title: Text(
          'Icons',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(5,
                    (index) => box_of_Icons(IconsData: icons_data_list[index]))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                    4,
                    (index) =>
                        box_of_Icons(IconsData: icons_data_list[index + 5]))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                    3,
                    (index) =>
                        box_of_Icons(IconsData: icons_data_list[index + 9]))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                    5,
                    (index) =>
                        box_of_Icons(IconsData: icons_data_list[index + 12]))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(3,
                    (index) => box_of_Icons(IconsData: icons_data_list[index]))
              ],
            ),
          )
        ],
      ),
    );
  }
}

/// beckoned
Widget box_of_Icons({required IconsData}) {
  return Container(
    margin: EdgeInsets.all(7),
    alignment: Alignment.center,
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.black12,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Icon(IconsData),
  );
}

List icons_data_list = [
  Icons.add,
  Icons.album,
  Icons.chevron_left,
  Icons.navigate_next,
  Icons.alarm,
  Icons.verified_user,
  Icons.account_circle,
  Icons.more,
  Icons.sync,
  Icons.shuffle,
  Icons.more_vert,
  Icons.arrow_downward_outlined,
  Icons.phone,
  Icons.search,
  Icons.add_a_photo_sharp,
  Icons.square,
  Icons.arrow_right,
  Icons.apps_rounded,
  Icons.circle_outlined,
  Icons.wifi_lock_outlined,
];
