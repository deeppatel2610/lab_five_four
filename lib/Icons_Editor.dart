import 'package:flutter/material.dart';
import 'Utils/global.dart';

class IconsEditor extends StatefulWidget {
  const IconsEditor({super.key});

  @override
  State<IconsEditor> createState() => _IconsEditorState();
}

class _IconsEditorState extends State<IconsEditor> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - 95;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black38,
        elevation: 7,
        centerTitle: true,
        title: Text(
          'Icons Editor',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: height / 32),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: height / 2.7,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 5, spreadRadius: 5),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(icon_data, size: height / 10, color: color_data),
            ),
            color_icon_title(height, width, 'Select Color'),
            Container(
              margin: EdgeInsets.only(top: height / 60),
              height: height / 6.8,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 5, spreadRadius: 5),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      color_list.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            color_data = color_list[index];
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: height / 8,
                          width: height / 8,
                          decoration: BoxDecoration(
                              color: color_list[index],
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            color_icon_title(height, width, 'Select Icons'),
            Container(
              margin: EdgeInsets.only(top: height / 60),
              height: height / 6.8,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 5, spreadRadius: 5),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      color_list.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            icon_data = icon_list[index];
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: height / 8,
                          width: height / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(icon_list[index],size: height/15,color: color_data),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
