import 'package:flutter/material.dart';

int count = 0;

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff54759E),
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text(
          'Calc',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$count',
              style: TextStyle(color: Color(0xff9E9E9E), fontSize: 70),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count -= 2;
                    });
                  },
                  child: Button('-2'),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count += 2;
                    });
                  },
                  child: Button('+2'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count -= 4;
                    });
                  },
                  child: Button('-4'),
                ),
                GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        count += 4;
                      },
                    );
                  },
                  child: Button('+4'),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  count = 0;
                });
              },
              child: Button('Clear'),
            )
          ],
        ),
      ),
    );
  }
}

Widget Button(String mas) {
  return Container(
    height: 50,
    width: 150,
    decoration: BoxDecoration(
      color: const Color(0xff54759E),
      borderRadius: BorderRadius.circular(15),
    ),
    alignment: Alignment.center,
    child: Text(
      mas,
      style: const TextStyle(color: Colors.white, fontSize: 25),
    ),
  );
}
