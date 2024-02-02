/*

•	ElevatedButton
•	TextButton
•	OutlinedButton
•	IconButton
•	FloatingActionButton
•	CupertinoButton

there will be separate page consisting of scaffold and appbars for each of the widget that will contain all the properties and methods of the widget.
we will be navigating to these pages from the home page of the app.

following are the widgets that we will be building:
ElevatedButtonWidget
TextButtonWidget
OutlinedButtonWidget
IconButtonWidget
FloatingActionButtonWidget
CupertinoButtonWidget


the body should be listview containing along with Center for each widget as well as SelectableCode widget to display the code.


 */

//ElevaedButtonWidget

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selectable_code_view/sourceCodes/code_view_screen.dart';
import 'package:selectable_code_view/sourceCodes/languages/base.dart';
import 'package:selectable_code_view/sourceCodes/themes/theme.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key});

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ElevatedButton Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: ElevatedButton(
              //using all the properties of the ElevatedButton widget
              autofocus: false,
              clipBehavior: Clip.none,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                elevation: MaterialStateProperty.all(10),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.all(Colors.red),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),

              onPressed: () {},
              child: Text('Elevated Button'),
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''Center(
          child: ElevatedButton(
             autofocus: false,
              clipBehavior: Clip.none,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                elevation: MaterialStateProperty.all(10),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.all(Colors.red),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              
            onPressed: () {},
            child: Text('Elevated Button'),
          ),
        ),
        ''',
              language: Language.DART,
              languageTheme: LanguageTheme.vscodeLight(),
              fontSize: 12.0,
              withZoom: true,
              withLinesCount: true,
              expanded: false,
            ),
          ),
        ],
      ),
    );
  }
}

//same for TextButtonWidget

class TextButtonWidget extends StatefulWidget {
  const TextButtonWidget({super.key});

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextButton Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: TextButton(
              //using all the properties of the TextButton widget
              autofocus: false,
              clipBehavior: Clip.none,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                elevation: MaterialStateProperty.all(10),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.all(Colors.red),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),

              onPressed: () {},
              child: Text('Text Button'),
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''Center(
          child: TextButton(
             autofocus: false,
              clipBehavior: Clip.none,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                elevation: MaterialStateProperty.all(10),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.all(Colors.red),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              
            onPressed: () {},
            child: Text('Text Button'),
          ),
        ),
        ''',
              language: Language.DART,
              languageTheme: LanguageTheme.vscodeLight(),
              fontSize: 12.0,
              withZoom: true,
              withLinesCount: true,
              expanded: false,
            ),
          ),
        ],
      ),
    );
  }
}

//same for OutlinedButtonWidget

class OutlinedButtonWidget extends StatefulWidget {
  const OutlinedButtonWidget({super.key});

  @override
  State<OutlinedButtonWidget> createState() => _OutlinedButtonWidgetState();
}

class _OutlinedButtonWidgetState extends State<OutlinedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OutlinedButton Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: OutlinedButton(
              //using all the properties of the OutlinedButton widget
              autofocus: false,
              clipBehavior: Clip.none,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                elevation: MaterialStateProperty.all(10),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.all(Colors.red),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),

              onPressed: () {},
              child: Text('Outlined Button'),
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''Center(
          child: OutlinedButton(
             autofocus: false,
              clipBehavior: Clip.none,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                elevation: MaterialStateProperty.all(10),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.all(Colors.red),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              
            onPressed: () {},
            child: Text('Outlined Button'),
          ),
        ),
        ''',
              language: Language.DART,
              languageTheme: LanguageTheme.vscodeLight(),
              fontSize: 12.0,
              withZoom: true,
              withLinesCount: true,
              expanded: false,
            ),
          ),
        ],
      ),
    );
  }
}

//same for IconButtonWidget

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({super.key});

  @override
  State<IconButtonWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: IconButton(
              //using all the properties of the IconButton widget
              autofocus: false,
              icon: Icon(Icons.add),
              iconSize: 50,
              onPressed: () {},
              splashRadius: 50,
              tooltip: 'Add',
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''Center(
          child: IconButton(
             autofocus: false,
              icon: Icon(Icons.add),
              iconSize: 50,
              onPressed: () {},
              splashRadius: 50,
              tooltip: 'Add',
          ),
        ),
        ''',
              language: Language.DART,
              languageTheme: LanguageTheme.vscodeLight(),
              fontSize: 12.0,
              withZoom: true,
              withLinesCount: true,
              expanded: false,
            ),
          ),
        ],
      ),
    );
  }
}

//same for FloatingActionButtonWidget

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  State<FloatingActionButtonWidget> createState() => _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState extends State<FloatingActionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: FloatingActionButton(
              //using all the properties of the FloatingActionButton widget
              autofocus: false,
              backgroundColor: Colors.blue,
              elevation: 10,
              onPressed: () {},
              splashColor: Colors.red,
              tooltip: 'Add',
              child: Icon(Icons.add),
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''Center(
          child: FloatingActionButton(
             autofocus: false,
              backgroundColor: Colors.blue,
              elevation: 10,
              onPressed: () {},
              splashColor: Colors.red,
              tooltip: 'Add',
              child: Icon(Icons.add),
          ),
        ),
        ''',
              language: Language.DART,
              languageTheme: LanguageTheme.vscodeLight(),
              fontSize: 12.0,
              withZoom: true,
              withLinesCount: true,
              expanded: false,
            ),
          ),
        ],
      ),
    );
  }
}

//same for CupertinoButtonWidget

class CupertinoButtonWidget extends StatefulWidget {
  const CupertinoButtonWidget({super.key});

  @override
  State<CupertinoButtonWidget> createState() => _CupertinoButtonWidgetState();
}

class _CupertinoButtonWidgetState extends State<CupertinoButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoButton Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: CupertinoButton(
              //using all the properties of the CupertinoButton widget
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              onPressed: () {},
              padding: EdgeInsets.all(10),
              child: Text('Cupertino Button'),
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''Center(
          child: CupertinoButton(
             autofocus: false,
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              onPressed: () {},
              padding: EdgeInsets.all(10),
              child: Text('Cupertino Button'),
          ),
        ),
        ''',
              language: Language.DART,
              languageTheme: LanguageTheme.vscodeLight(),
              fontSize: 12.0,
              withZoom: true,
              withLinesCount: true,
              expanded: false,
            ),
          ),
        ],
      ),
    );
  }
}
