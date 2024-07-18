import 'package:flutter/material.dart';

List num = [];
int cunat = 1;

class DaynamicList extends StatefulWidget {
  const DaynamicList({super.key});

  @override
  State<DaynamicList> createState() => _DaynamicListState();
}

class _DaynamicListState extends State<DaynamicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 5,
        backgroundColor: Color(0xff244D61),
        title: Text(
          'Dynamic List',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [...List.generate(num.length, (index) => button(index))],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                num.add(button(cunat));
              });
            },
            child: Container(
              margin: EdgeInsets.all(7),
              alignment: Alignment.center,
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Color(0xff244D61),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54, blurRadius: 4, spreadRadius: 2)
                ],
              ),
              child: Text(
                '+',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                num.removeLast();
              });
            },
            child: Container(
              margin: EdgeInsets.all(7),
              alignment: Alignment.center,
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Color(0xff244D61),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54, blurRadius: 4, spreadRadius: 2)
                ],
              ),
              child: Text(
                '-',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget button(int index) {
    index+=1;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        color: (index % 2 == 1) ? Color(0xff75E2FF) : Color(0xff5689C0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        '$index',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
