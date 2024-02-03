// ignore_for_file: sort_child_properties_last

/*

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


the above is just an example of what we are gonna do for the following widgets:
•	Card
•	ListTile
•	GridView
•	ExpansionPanel
•	Chip
•	DecoratedBox


 */

//CardWidget

import 'package:flutter/material.dart';
import 'package:selectable_code_view/sourceCodes/code_view_screen.dart';
import 'package:selectable_code_view/sourceCodes/languages/base.dart';
import 'package:selectable_code_view/sourceCodes/themes/theme.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('Title'),
                  subtitle: Text('Subtitle'),
                  leading: Icon(Icons.account_circle),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Description'),
                ),
                ButtonBar(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Button 1'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Button 2'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('Title'),
                  subtitle: Text('Subtitle'),
                  leading: Icon(Icons.account_circle),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Description'),
                ),
                ButtonBar(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Button 1'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Button 2'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        Following are all the properties of the Card widget
        child: Widget,
        color: Color,
        shadowColor: Color,
        elevation: double,
        shape: ShapeBorder,
        margin: EdgeInsets,
        clipBehavior: Clip,
        borderOnForeground: bool,
        semanticContainer: bool,
        margin: EdgeInsets,
        clipBehavior: Clip,
        borderOnForeground: bool,
        semanticContainer: bool,
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

//same for ListTileWidget

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({super.key});

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile Widget'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Title'),
            subtitle: Text('Subtitle'),
            trailing: Icon(Icons.more_vert),
            onTap: () {},
            isThreeLine: true,
            dense: true,
            contentPadding: EdgeInsets.all(8.0),
            enabled: true,
            selected: true,
            focusColor: Colors.red,
            hoverColor: Colors.blue,
            autofocus: true,
            tileColor: Colors.green,
            selectedTileColor: Colors.yellow,
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Title'),
            subtitle: Text('Subtitle'),
            trailing: Icon(Icons.more_vert),
            onTap: () {},
          ),
        Following are all the properties of the ListTile widget
        leading: Widget,
        title: Widget,
        subtitle: Widget,
        trailing: Widget,
        isThreeLine: bool,
        dense: bool,
        contentPadding: EdgeInsets,
        enabled: bool,
        selected: bool,
        focusColor: Color,
        hoverColor: Color,
        autofocus: bool,
        tileColor: Color,
        selectedTileColor: Color,
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

//same for GridViewWidget

//the body should be in a custom scroll view to avoid the error of having multiple scrollable widgets in the same parent widget

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 1.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text('Item $index'),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
          SelectableCodeView(
            code: '''
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 8.0,
    crossAxisSpacing: 8.0,
    childAspectRatio: 1.0,
  ),
  itemBuilder: (BuildContext context, int index) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text('Item \$index'),
      ),
    );
  },
  itemCount: 10,
)''', // Code text
            language: Language.DART, // Language
            languageTheme: LanguageTheme.vscodeLight(), // Theme
            fontSize: 12.0, // Font size
            withZoom: true, // Enable/Disable zoom icon controls
            withLinesCount: true, // Enable/Disable line number
            expanded: false, // Enable/Disable container expansion
          ),
        ],
      ),
    );
  }
}

//same for ExpansionPanelWidget
class ExpansionPanelWidget extends StatefulWidget {
  const ExpansionPanelWidget({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelWidget> createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  List<bool> _isExpandedList = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanel Widget'),
      ),
      body: Column(
        children: [
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _isExpandedList[index] = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Title 1'),
                  );
                },
                body: Text('Description 1'),
                isExpanded: _isExpandedList[0],
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Title 2'),
                  );
                },
                body: Text('Description 2'),
                isExpanded: _isExpandedList[1],
              ),
            ],
            animationDuration: Duration(milliseconds: 200),
            elevation: 8.0,
            expandedHeaderPadding: EdgeInsets.all(8.0),
            dividerColor: Colors.black,
          ),
          SizedBox(height: 16), // Add some space
          Center(
            child: SelectableCodeView(
              code: '''ExpansionPanelList(
  expansionCallback: (int index, bool isExpanded) {
    setState(() {
      _isExpandedList[index] = !isExpanded;
    });
  },
  children: [
    ExpansionPanel(
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(
          title: Text('Title 1'),
        );
      },
      body: Text('Description 1'),
      isExpanded: _isExpandedList[0],
    ),
    ExpansionPanel(
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(
          title: Text('Title 2'),
        );
      },
      body: Text('Description 2'),
      isExpanded: _isExpandedList[1],
    ),
  ],
  animationDuration: Duration(milliseconds: 200),
  elevation: 8.0,
  expandedHeaderPadding: EdgeInsets.all(8.0),
  dividerColor: Colors.black,
)''', // Code text
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

//same for ChipWidget

class ChipWidget extends StatefulWidget {
  const ChipWidget({super.key});

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip Widget'),
      ),
      body: ListView(
        children: [
          Chip(
            label: Text('Label'),
            avatar: Icon(Icons.account_circle),
            onDeleted: () {},
            deleteIcon: Icon(Icons.close),
            deleteIconColor: Colors.red,
            deleteButtonTooltipMessage: 'Delete',
            materialTapTargetSize: MaterialTapTargetSize.padded,
            clipBehavior: Clip.antiAlias,
            backgroundColor: Colors.blue,
            padding: EdgeInsets.all(8.0),
            visualDensity: VisualDensity.standard,
            elevation: 8.0,
            shadowColor: Colors.black,
            labelPadding: EdgeInsets.all(8.0),
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            side: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
            key: Key('key'),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Chip(
            label: Text('Label'),
            avatar: Icon(Icons.account_circle),
            onDeleted: () {},
            deleteIcon: Icon(Icons.close),
            deleteIconColor: Colors.red,
            deleteButtonTooltipMessage: 'Delete',
            materialTapTargetSize: MaterialTapTargetSize.padded,
            clipBehavior: Clip.antiAlias,
            backgroundColor: Colors.blue,
            padding: EdgeInsets.all(8.0),
            visualDensity: VisualDensity.standard,
            elevation: 8.0,
            shadowColor: Colors.black,
            labelPadding: EdgeInsets.all(8.0),
            labelStyle: TextStyle(
              color: Colors.white,
            ),  
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            side: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
            key: Key('key'),
          ),
        Following are all the properties of the Chip widget
        label: Widget,
        avatar: Widget,
        onDeleted: Function,
        deleteIcon: Widget,
        deleteIconColor: Color,
        deleteButtonTooltipMessage: String,
        materialTapTargetSize: MaterialTapTargetSize,
        clipBehavior: Clip,
        backgroundColor: Color,
        padding: EdgeInsets,
        visualDensity: VisualDensity,
        elevation: double,
        shadowColor: Color,
        labelPadding: EdgeInsets,
        labelStyle: TextStyle,  
        shape: ShapeBorder,
        side: BorderSide,
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

//same for DecoratedBoxWidget

class DecoratedBoxWidget extends StatefulWidget {
  const DecoratedBoxWidget({super.key});

  @override
  State<DecoratedBoxWidget> createState() => _DecoratedBoxWidgetState();
}

class _DecoratedBoxWidgetState extends State<DecoratedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBox Widget'),
      ),
      body: ListView(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              height: 100.0,
              width: 100.0,
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              height: 100.0,
              width: 100.0,
            ),
          ),
        Following are all the properties of the DecoratedBox widget
        decoration: BoxDecoration,
        position: DecorationPosition,
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
