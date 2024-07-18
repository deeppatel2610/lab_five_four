### IconsEditor Widget

The `IconsEditor` widget in this Flutter application provides an interface for users to select an icon and a color, displaying the chosen icon in the selected color. This document provides a detailed explanation of the widget and how it functions.

### Imports

```dart
import 'package:flutter/material.dart';
import 'Utils/global.dart';
```

The `global.dart` file is expected to contain the definitions for `icon_data`, `color_data`, `color_list`, `icon_list`, and `color_icon_title`.

### IconsEditor StatefulWidget

The `IconsEditor` class extends `StatefulWidget` because it maintains state (the selected icon and color).

```dart
class IconsEditor extends StatefulWidget {
  const IconsEditor({super.key});

  @override
  State<IconsEditor> createState() => _IconsEditorState();
}
```

### _IconsEditorState

The `_IconsEditorState` class defines the state for the `IconsEditor` widget. It contains the `build` method, which describes the widget's UI.

```dart
class _IconsEditorState extends State<IconsEditor> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - 95;
    double width = MediaQuery.of(context).size.width;
```

### Scaffold

The `Scaffold` widget provides the basic structure for the app: an app bar and a body.

```dart
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
```

### Body

The body of the Scaffold contains a `Padding` widget, which holds a `Column` widget. The `Column` widget contains several children:

1. **Icon Display:**
   Displays the selected icon in the chosen color.
   
   ```dart
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
   ```

2. **Color Selection Title:**
   Displays the title "Select Color".
   
   ```dart
            color_icon_title(height, width, 'Select Color'),
   ```

3. **Color Selection Row:**
   A horizontal scrollable list of colors. Tapping a color updates `color_data`.
   
   ```dart
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
   ```

4. **Icon Selection Title:**
   Displays the title "Select Icons".
   
   ```dart
            color_icon_title(height, width, 'Select Icons'),
   ```

5. **Icon Selection Row:**
   A horizontal scrollable list of icons. Tapping an icon updates `icon_data`.
   
   ```dart
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
                          child: Icon(icon_list[index], size: height / 15, color: color_data),
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

### Photos for application

<p align = "center">
  <img src = "https://github.com/user-attachments/assets/1bc5d810-65b7-45c6-8843-b39f030693b7" width=22% height=35%>
  <img src = "https://github.com/user-attachments/assets/4c184dd3-034b-465f-99ba-411a0618e059" width=22% height=35%>
  <img src = "https://github.com/user-attachments/assets/a53258bd-2a92-46da-bf83-7f42043f000e" width=22% height=35%>
  <img src = "https://github.com/user-attachments/assets/a3379fc8-92a9-4331-9f30-be9bedeb63ec" width=22% height=35%>
  <img src = "https://github.com/user-attachments/assets/35dbf0ec-0382-4e64-bfd2-99b618b5d0cf" width=22% height=35%>
</p>
