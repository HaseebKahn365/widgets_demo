/*
this folder contains all the layout widgets along with all their properties and methods following are the widget that are included in this file

•	Container
•	Row
•	Column
•	ListView
•	Stack
•	Expanded
•	Flexible
•	Wrap
•	SizedBox
•	ConstrainedBox
•	AspectRatio
•	FittedBox

there will be separate page consisting of scaffold and appbars for each of the widget that will contain all the properties and methods of the widget.
we will be navigating to these pages from the home page of the app.

1.ContainerWidget
2.RowWidget
3.ColumnWidget
4.ListViewWidget
5.StackWidget
6.ExpandedWidget
7.FlexibleWidget
8.WrapWidget
9.SizedBoxWidget
10.ConstrainedBoxWidget
11.AspectRatioWidget
12.FittedBoxWidget

lets write the code for each of the widget one by one.
 */

import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Widget'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
          color: Colors.blue,
          width: 100,
          height: 100,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.1),
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
