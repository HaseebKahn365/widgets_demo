// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/*
this folder contains all the Text and Typography widgets along with the use of all their properties and methods following are the widget that are included in this file.

1. Text
2. RichText
3. DefaultTextStyle
4. TextStyle

there will be separate page consisting of scaffold and appbars for each of the widget that will contain all the properties and methods of the widget.
we will be navigating to these pages from the home page of the app.

TextWidget
RichTextWidget
DefaultTextStyleWidget
TextStyleWidget

the body should be listview containing the widget as well as SelectableCode widget to display the code.




*/

import 'package:flutter/material.dart';
import 'package:selectable_code_view/sourceCodes/code_view_screen.dart';
import 'package:selectable_code_view/sourceCodes/languages/base.dart';
import 'package:selectable_code_view/sourceCodes/themes/theme.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: Text('Hello World',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.dotted,
                  decorationThickness: 2,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ],
                )),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Center(
          child: Text('Hello World',
           style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.dotted,
                  decorationThickness: 2,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ],
                ),),
        ),

        Following are all the properties of the Text widget
        data: String,
        style: TextStyle,
        textAlign: TextAlign,
        textDirection: TextDirection,
        locale: Locale,
        softWrap: bool,
        overflow: TextOverflow,
        textScaleFactor: double,
        maxLines: int,
        semanticsLabel: String,
        textWidthBasis: TextWidthBasis,
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
        ],
      ),
    );
  }
}

// same for the RichTextWidget

class RichTextWidget extends StatefulWidget {
  const RichTextWidget({super.key});

  @override
  State<RichTextWidget> createState() => _RichTextWidgetState();
}

class _RichTextWidgetState extends State<RichTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: RichText(
              text: TextSpan(
                text: 'Hello ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.dotted,
                  decorationThickness: 2,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'World',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2,
                      wordSpacing: 2,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationStyle: TextDecorationStyle.dotted,
                      decorationThickness: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Center(
          child: RichText(
              text: TextSpan(
                text: 'Hello ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.dotted,
                  decorationThickness: 2,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'World',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2,
                      wordSpacing: 2,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationStyle: TextDecorationStyle.dotted,
                      decorationThickness: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ),

        Following are all the properties of the RichText widget
        text: TextSpan,
        textAlign: TextAlign,
        textDirection: TextDirection,
        locale: Locale,
        softWrap: bool,
        overflow: TextOverflow,
        textScaleFactor: double,
        maxLines: int,
        semanticsLabel: String,
        textWidthBasis: TextWidthBasis,
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
        ],
      ),
    );
  }
}

// same for the DefaultTextStyleWidget

class DefaultTextStyleWidget extends StatefulWidget {
  const DefaultTextStyleWidget({super.key});

  @override
  State<DefaultTextStyleWidget> createState() => _DefaultTextStyleWidgetState();
}

class _DefaultTextStyleWidgetState extends State<DefaultTextStyleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DefaultTextStyle Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationStyle: TextDecorationStyle.dotted,
                decorationThickness: 2,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Text('Hello World'),
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Center(
          child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationStyle: TextDecorationStyle.dotted,
                decorationThickness: 2,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Text('Hello World'),
            ),
        ),

        Following are all the properties of the DefaultTextStyle widget
        style: TextStyle,
        textAlign: TextAlign,
        textDirection: TextDirection,
        maxLines: int,
        overflow: TextOverflow,
        softWrap: bool,
        textScaleFactor: double,
        textWidthBasis: TextWidthBasis,
        child: Widget,
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
        ],
      ),
    );
  }
}

// same for the TextStyleWidget

class TextStyleWidget extends StatefulWidget {
  const TextStyleWidget({super.key});

  @override
  State<TextStyleWidget> createState() => _TextStyleWidgetState();
}

class _TextStyleWidgetState extends State<TextStyleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextStyle Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: Text('Hello World',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.dotted,
                  decorationThickness: 2,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ],
                )),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Center(
          child: Text('Hello World',
           style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.dotted,
                  decorationThickness: 2,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ],
                ),),
        ),

        Following are all the properties of the TextStyle widget
        inherit: bool,
        color: Color,
        backgroundColor: Color,
        fontSize: double,
        fontWeight: FontWeight,
        fontStyle: FontStyle,
        letterSpacing: double,
        wordSpacing: double,
        textBaseline: TextBaseline,
        height: double,
        locale: Locale,
        foreground: Paint,
        background: Paint,
        decoration: TextDecoration,
        decorationColor: Color,
        decorationStyle: TextDecorationStyle,
        decorationThickness: double,
        shadows: List<Shadow>,
        fontFeatures: List<FontFeature>,
        fontFamily: String,
        fontFamilyFallback: List<String>,
        package: String,
        ''', // Code text
              language: Language.DART, // Language
              languageTheme: LanguageTheme.vscodeLight(), // Theme
              fontSize: 12.0, // Font size
              withZoom: true, // Enable/Disable zoom icon controls
              withLinesCount: true, // Enable/Disable line number
              expanded: false, // Enable/Disable container expansion
            ),
          )
        ],
      ),
    );
  }
}
