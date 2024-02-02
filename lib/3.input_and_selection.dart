// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

/*

•	TextField
•	Checkbox
•	Radio
•	Switch

there will be separate page consisting of scaffold and appbars for each of the widget that will contain all the properties and methods of the widget.
we will be navigating to these pages from the home page of the app.

TextFieldWidget
CheckboxWidget
RadioWidget
SwitchWidget

the body should be listview containing the widget as well as SelectableCode widget to display the code.




 */

import 'package:flutter/material.dart';
import 'package:selectable_code_view/sourceCodes/code_view_screen.dart';
import 'package:selectable_code_view/sourceCodes/languages/base.dart';
import 'package:selectable_code_view/sourceCodes/themes/theme.dart';

//TextFieldWidget

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: ListView(
        children: [
          Center(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your username',
                hintText: 'Enter your username',
                alignLabelWithHint: true,
                counter: Text('Counter'),
                errorText: 'Error Text',
                errorMaxLines: 2,
                errorBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                focusedErrorBorder: OutlineInputBorder(),
                helperText: 'Helper Text',
                helperMaxLines: 2,
                hintMaxLines: 2,
                icon: Icon(Icons.person),
                labelStyle: TextStyle(color: Colors.red),
                prefixIcon: Icon(Icons.person),
                prefixText: 'Prefix Text',
                prefixStyle: TextStyle(color: Colors.red),
                suffixIcon: Icon(Icons.person),
                suffixText: 'Suffix Text',
                suffixStyle: TextStyle(color: Colors.red),
                counterStyle: TextStyle(color: Colors.red),
                errorStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''
            TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your username',
              hintText: 'Enter your username',
              alignLabelWithHint: true,
              counter: Text('Counter'),
              errorText: 'Error Text',
              errorMaxLines: 2,
              errorBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
              focusedErrorBorder: OutlineInputBorder(),
              helperText: 'Helper Text',
              helperMaxLines: 2,
              hintMaxLines: 2,
              icon: Icon(Icons.person),
              labelStyle: TextStyle(color: Colors.red),
              prefixIcon: Icon(Icons.person),
              prefixText: 'Prefix Text',
              prefixStyle: TextStyle(color: Colors.red),
              suffixIcon: Icon(Icons.person),
              suffixText: 'Suffix Text',
              suffixStyle: TextStyle(color: Colors.red),
              counterStyle: TextStyle(color: Colors.red),
              errorStyle: TextStyle(color: Colors.red),
            ),
          ),
            ''',

              language: Language.DART, // Language
              languageTheme: LanguageTheme.vscodeLight(), // Theme
              fontSize: 12.0, // Font size
              withZoom: true, // Enable/Disable zoom icon controls
              withLinesCount: true, // Enable/Disable line number
              expanded: false, // Enable/Disable container expansion
            ),
          ),
        ],
      ),
    );
  }
}

//same for CheckboxWidget

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: ListView(
        children: [
          Center(
            child: Checkbox(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
              checkColor: Colors.red,
              fillColor: MaterialStateProperty.all(Colors.green),
              focusColor: Colors.blue,
              hoverColor: Colors.yellow,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              mouseCursor: MouseCursor.defer,
              overlayColor: MaterialStateProperty.all(Colors.purple),
              splashRadius: 20,
              visualDensity: VisualDensity.standard,
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''
            Checkbox(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
              checkColor: Colors.red,
              fillColor: MaterialStateProperty.all(Colors.green),
              focusColor: Colors.blue,
              hoverColor: Colors.yellow,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              mouseCursor: MouseCursor.defer,
              overlayColor: MaterialStateProperty.all(Colors.purple),
              splashRadius: 20,
              visualDensity: VisualDensity.standard,
            ),
            ''',

              language: Language.DART, // Language
              languageTheme: LanguageTheme.vscodeLight(), // Theme
              fontSize: 12.0, // Font size
              withZoom: true, // Enable/Disable zoom icon controls
              withLinesCount: true, // Enable/Disable line number
              expanded: false, // Enable/Disable container expansion
            ),
          ),
        ],
      ),
    );
  }
}

//same for RadioWidget

class RadioWidget extends StatefulWidget {
  @override
  _RadioWidgetState createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
      ),
      body: ListView(
        children: [
          Center(
            child: Row(
              children: [
                Radio(
                  value: 0,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  },
                  activeColor: Colors.red,
                  autofocus: true,
                  focusColor: Colors.blue,
                  hoverColor: Colors.yellow,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  mouseCursor: MouseCursor.defer,
                  visualDensity: VisualDensity.standard,
                ),
                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  },
                  activeColor: Colors.red,
                  autofocus: true,
                  focusColor: Colors.blue,
                  hoverColor: Colors.yellow,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  mouseCursor: MouseCursor.defer,
                  visualDensity: VisualDensity.standard,
                ),
              ],
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''
            Row(
              children: [
                Radio(
                  value: 0,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  },
                  activeColor: Colors.red,
                  autofocus: true,
                  focusColor: Colors.blue,
                  hoverColor: Colors.yellow,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  mouseCursor: MouseCursor.defer,
                  visualDensity: VisualDensity.standard,
                ),
                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  },
                  activeColor: Colors.red,
                  autofocus: true,
                  focusColor: Colors.blue,
                  hoverColor: Colors.yellow,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  mouseCursor: MouseCursor.defer,
                  visualDensity: VisualDensity.standard,
                ),
              ],
            ),
            ''',

              language: Language.DART, // Language
              languageTheme: LanguageTheme.vscodeLight(), // Theme
              fontSize: 12.0, // Font size
              withZoom: true, // Enable/Disable zoom icon controls
              withLinesCount: true, // Enable/Disable line number
              expanded: false, // Enable/Disable container expansion
            ),
          ),
        ],
      ),
    );
  }
}

//same for SwitchWidget

class SwitchWidget extends StatefulWidget {
  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: ListView(
        children: [
          Center(
            child: Switch(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
              activeColor: Colors.red,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.yellow,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              mouseCursor: MouseCursor.defer,
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''
            Switch(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
              activeColor: Colors.red,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.yellow,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              mouseCursor: MouseCursor.defer,
            ),
            ''',

              language: Language.DART, // Language
              languageTheme: LanguageTheme.vscodeLight(), // Theme
              fontSize: 12.0, // Font size
              withZoom: true, // Enable/Disable zoom icon controls
              withLinesCount: true, // Enable/Disable line number
              expanded: false, // Enable/Disable container expansion
            ),
          ),
        ],
      ),
    );
  }
}
