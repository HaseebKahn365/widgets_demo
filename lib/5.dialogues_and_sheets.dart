/*

5.	Dialogs, Alerts, and Bottom Sheets:
•	AlertDialog
•	SimpleDialog
•	BottomSheet
•	PopupMenuButton

there will be separate page consisting of scaffold and appbars for each of the widget that will contain all the properties and methods of the widget.
we will be navigating to these pages from the home page of the app.


AlertDialogWidget
SimpleDialogWidget
BottomSheetWidget
PopupMenuButtonWidget

the body should be listview containing the widget as well as SelectableCode widget to display the code.


here is an example of how the page should look like:

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

 
 */

//AlertDialogWidget

import 'package:flutter/material.dart';
import 'package:selectable_code_view/sourceCodes/code_view_screen.dart';
import 'package:selectable_code_view/sourceCodes/languages/base.dart';
import 'package:selectable_code_view/sourceCodes/themes/theme.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({Key? key}) : super(key: key);

  @override
  _AlertDialogWidgetState createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('AlertDialog Title'),
                      content: Text('AlertDialog Content'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Show AlertDialog'),
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('AlertDialog Title'),
                      content: Text('AlertDialog Content'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Show AlertDialog'),
            ),
        ),
        Following are all the properties of the AlertDialog widget
        title: Widget,
        titlePadding: EdgeInsets,
        titleTextStyle: TextStyle,
        content: Widget,
        contentPadding: EdgeInsets,
        contentTextStyle: TextStyle,
        actions: List<Widget>,
        actionsPadding: EdgeInsets,
        actionsOverflowDirection: VerticalDirection,
        actionsAlignment: MainAxisAlignment,
        actionsButtonPadding: EdgeInsets,
        buttonPadding: EdgeInsets,
        backgroundColor: Color,
        elevation: double,
        semanticLabel: String,
        insetPadding: EdgeInsets,
        clipBehavior: Clip,
        scrollable: bool,
        shape: ShapeBorder,
        scrollController: ScrollController,
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

//SimpleDialogWidget

class SimpleDialogWidget extends StatefulWidget {
  const SimpleDialogWidget({Key? key}) : super(key: key);

  @override
  _SimpleDialogWidgetState createState() => _SimpleDialogWidgetState();
}

class _SimpleDialogWidgetState extends State<SimpleDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: Text('SimpleDialog Title'),
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Option 1'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Option 2'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Option 3'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Show SimpleDialog'),
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: Text('SimpleDialog Title'),
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Option 1'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Option 2'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Option 3'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Show SimpleDialog'),
            ),
        ),
        Following are all the properties of the SimpleDialog widget
        title: Widget,
        titlePadding: EdgeInsets,
        titleTextStyle: TextStyle,
        children: List<Widget>,
        backgroundColor: Color,
        elevation: double,
        semanticLabel: String,
        insetPadding: EdgeInsets,
        clipBehavior: Clip,
        scrollController: ScrollController,
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

//BottomSheetWidget

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Text('BottomSheet Content'),
                      ),
                    );
                  },
                );
              },
              child: Text('Show BottomSheet'),
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Center(
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Text('BottomSheet Content'),
                      ),
                    );
                  },
                );
              },
              child: Text('Show BottomSheet'),
            ),
        ),
        Following are all the properties of the BottomSheet widget
        context: BuildContext,
        builder: WidgetBuilder,
        isScrollControlled: bool,
        enableDrag: bool,
        isDismissible: bool,
        backgroundColor: Color,
        elevation: double,
        shape: ShapeBorder,
        clipBehavior: Clip,
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

//PopupMenuButtonWidget

class PopupMenuButtonWidget extends StatefulWidget {
  const PopupMenuButtonWidget({Key? key}) : super(key: key);

  @override
  _PopupMenuButtonWidgetState createState() => _PopupMenuButtonWidgetState();
}

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton Widget'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Item 1'),
                ),
                PopupMenuItem(
                  child: Text('Item 2'),
                ),
                PopupMenuItem(
                  child: Text('Item 3'),
                ),
              ];
            },
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            elevation: 8.0,
            enableFeedback: true,
            icon: Icon(Icons.more_vert),
            key: Key('key'),
            offset: Offset(0, 0),
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            tooltip: 'tooltip',
          ),
        ],
      ),
      body: ListView(
        children: [
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''AppBar(
        title: Text('PopupMenuButton Widget'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Item 1'),
                ),
                PopupMenuItem(
                  child: Text('Item 2'),
                ),
                PopupMenuItem(
                  child: Text('Item 3'),
                ),
              ];
            },
          ),
        ],
      ),
        Following are all the properties of the PopupMenuButton widget
        itemBuilder: PopupMenuItemBuilder,
        initialValue: T,
        onSelected: PopupMenuItemSelected,
        onCanceled: PopupMenuItemCanceled,
        tooltip: String,
        elevation: double,
        padding: EdgeInsets,
        icon: Widget,
        offset: Offset,
        enabled: bool,
        shape: ShapeBorder,
        color: Color,
        enableFeedback: bool,
        captureInheritedThemes: bool,
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
