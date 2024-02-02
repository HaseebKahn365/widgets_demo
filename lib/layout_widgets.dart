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
import 'package:selectable_code_view/selectable_code_view.dart';
import 'package:selectable_code_view/sourceCodes/code_view_screen.dart';

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
      body: ListView(children: [
        Center(
          child: Container(
            child: Text('Hello World'),
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
        Center(
          //documentation for this widget using the selectable_code_view package .
          child: SelectableCodeView(
            code: '''Center(
          child: Container(
            child: Text('Hello World'),
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

        Following are all the properties of the container widget
        foregroundDecoration: BoxDecoration,
        constraints: BoxConstraints,
        clipBehavior: Clip,
        child: Widget,
        key: Key,
        color: Color,
        height: double,
        width: double,
        margin: EdgeInsets,
        padding: EdgeInsets,
        transform: Matrix4,
        alignment: Alignment,
        constraints: BoxConstraints,
        decoration: BoxDecoration,
        
        ''', // Code text
            language: Language.DART, // Language
            languageTheme: LanguageTheme.vscodeLight(), // Theme
            fontSize: 12.0, // Font size
            withZoom: true, // Enable/Disable zoom icon controls
            withLinesCount: true, // Enable/Disable line number
            expanded: false, // Enable/Disable container expansion
          ),
        )
      ]),
    );
  }
}

// Same for RowWidget
class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Widget'),
      ),
      body: ListView(children: [
        Center(
          child: Row(
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
        Center(
          //documentation for this widget using the selectable_code_view package .
          child: SelectableCodeView(
            code: '''Center(
          child: Row(
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),

        Following are all the properties of the Row widget
        mainAxisAlignment: MainAxisAlignment,
        mainAxisSize: MainAxisSize,
        crossAxisAlignment: CrossAxisAlignment,
        textDirection: TextDirection,
        verticalDirection: VerticalDirection,
        textBaseline: TextBaseline,
        children: List<Widget>,
        key: Key,
        ''', // Code text
            language: Language.DART, // Language
            languageTheme: LanguageTheme.vscodeLight(), // Theme
            fontSize: 12.0, // Font size
            withZoom: true, // Enable/Disable zoom icon controls
            withLinesCount: true, // Enable/Disable line number
            expanded: false, // Enable/Disable container expansion
          ),
        )
      ]),
    );
  }
}

// Same for ColumnWidget

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({super.key});

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Widget'),
      ),
      body: ListView(children: [
        Center(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
        Center(
          //documentation for this widget using the selectable_code_view package .
          child: SelectableCodeView(
            code: '''Center(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),

        Following are all the properties of the Column widget
        mainAxisAlignment: MainAxisAlignment,
        mainAxisSize: MainAxisSize,
        crossAxisAlignment: CrossAxisAlignment,
        textDirection: TextDirection,
        verticalDirection: VerticalDirection,
        textBaseline: TextBaseline,
        children: List<Widget>,
        key: Key,
        ''', // Code text
            language: Language.DART, // Language
            languageTheme: LanguageTheme.vscodeLight(), // Theme
            fontSize: 12.0, // Font size
            withZoom: true, // Enable/Disable zoom icon controls
            withLinesCount: true, // Enable/Disable line number
            expanded: false, // Enable/Disable container expansion
          ),
        )
      ]),
    );
  }
}

// Same for ListViewWidget

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Widget'),
      ),
      body: ListView(children: [
        Center(
          child: ListView(
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
        Center(
          //documentation for this widget using the selectable_code_view package .
          child: SelectableCodeView(
            code: '''Center(
          child: ListView(
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),

        Following are all the properties of the ListView widget
        scrollDirection: Axis,
        reverse: bool,
        controller: ScrollController,
        primary: bool,
        physics: ScrollPhysics,
        shrinkWrap: bool,
        padding: EdgeInsets,
        itemExtent: double,
        addAutomaticKeepAlives: bool,
        addRepaintBoundaries: bool,
        addSemanticIndexes: bool,
        cacheExtent: double,
        children: List<Widget>,
        semanticChildCount: int,
        dragStartBehavior: DragStartBehavior,
        key: Key,
        ''', // Code text
            language: Language.DART, // Language
            languageTheme: LanguageTheme.vscodeLight(), // Theme
            fontSize: 12.0, // Font size
            withZoom: true, // Enable/Disable zoom icon controls
            withLinesCount: true, // Enable/Disable line number
            expanded: false, // Enable/Disable container expansion
          ),
        )
      ]),
    );
  }
}

// Same for StackWidget

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: ListView(children: [
        Center(
          child: Stack(
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
        Center(
          //documentation for this widget using the selectable_code_view package .
          child: SelectableCodeView(
            code: '''Center(
          child: Stack(
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),

        Following are all the properties of the Stack widget
        alignment: AlignmentDirectional,
        textDirection: TextDirection,
        fit: StackFit,
        overflow: Overflow,
        clipBehavior: Clip,
        children: List<Widget>,
        key: Key,
        ''', // Code text
            language: Language.DART, // Language
            languageTheme: LanguageTheme.vscodeLight(), // Theme
            fontSize: 12.0, // Font size
            withZoom: true, // Enable/Disable zoom icon controls
            withLinesCount: true, // Enable/Disable line number
            expanded: false, // Enable/Disable container expansion
          ),
        )
      ]),
    );
  }
}
