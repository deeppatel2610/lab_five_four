import 'package:flutter/material.dart';

class Chess extends StatefulWidget {
  const Chess({super.key});

  @override
  State<Chess> createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Chess',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          child: Column(
            children: [
              Row(
                children: [
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black()
                ],
              ),
              Row(
                children: [
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white()
                ],
              ),
              Row(
                children: [
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black()
                ],
              ),
              Row(
                children: [
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white()
                ],
              ),
              Row(
                children: [
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black()
                ],
              ),
              Row(
                children: [
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                ],
              ),
              Row(
                children: [
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black()
                ],
              ),
              Row(
                children: [
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget white() {
  return Container(height: 50, width: 50, color: Colors.white);
}

Widget black() {
  return Container(
    height: 50,
    width: 50,
    color: Colors.black,
  );
}
