import 'package:flutter/material.dart';

class MapData extends StatefulWidget {
  const MapData({super.key});

  @override
  State<MapData> createState() => _MapState();
}

class _MapState extends State<MapData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 3,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff2196F3),
        centerTitle: true,
        title: Text(
          'Map',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: l1
              .map(
                (e) => name_Icon(
                  name: e['Name'],
                  IconData: e['Icon'],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

/// beckoned
Widget name_Icon({required name, required IconData}) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 100,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.black12, borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Icon(
            IconData,
            size: 30,
          ),
        ],
      ),
    ),
  );
}

List l1 = [
  {
    'Name': 'Exit',
    'Icon': Icons.exit_to_app,
  },
  {
    'Name': 'Play',
    'Icon': Icons.play_arrow,
  },
  {
    'Name': 'Pause',
    'Icon': Icons.pause,
  },
  {
    'Name': 'Stop',
    'Icon': Icons.stop,
  },
  {
    'Name': 'Close',
    'Icon': Icons.close,
  },
  {
    'Name': 'Delete',
    'Icon': Icons.delete,
  },
  {
    'Name': 'Email',
    'Icon': Icons.email,
  }
];
