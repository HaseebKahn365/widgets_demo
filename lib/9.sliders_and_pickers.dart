/*
class LinearProgressIndicatorWidget extends StatefulWidget {
  const LinearProgressIndicatorWidget({super.key});

  @override
  State<LinearProgressIndicatorWidget> createState() => _LinearProgressIndicatorWidgetState();
}

class _LinearProgressIndicatorWidgetState extends State<LinearProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearProgressIndicator Widget'),
      ),
      body: ListView(
        children: [
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            color: Colors.blue,
            minHeight: 10.0,
            semanticsLabel: 'semanticsLabel',
            semanticsValue: 'semanticsValue',
            value: 0.5,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          ),
          Center(
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.blue,
              minHeight: 10.0,
              semanticsLabel: 'semanticsLabel',
              semanticsValue: 'semanticsValue',
              value: 0.5,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''LinearProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.blue,
              minHeight: 10.0,
              semanticsLabel: 'semanticsLabel',
              semanticsValue: 'semanticsValue',
              value: 0.5,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
        Following are all the properties of the LinearProgressIndicator widget
        backgroundColor: Color,
        color: Color,
        minHeight: double,
        semanticsLabel: String,
        semanticsValue: String,
        value: double,
        valueColor: Animation<Color>,
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

the above is just an example of how the following widgets should be built
•	Slider
•	RangeSlider
•	DatePicker
•	TimePicker


 */

//SliderWidget

import 'package:flutter/material.dart';
import 'package:selectable_code_view/sourceCodes/code_view_screen.dart';
import 'package:selectable_code_view/sourceCodes/languages/base.dart';
import 'package:selectable_code_view/sourceCodes/themes/theme.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Widget'),
      ),
      body: ListView(
        children: [
          Slider(
            value: 0.5,
            onChanged: (double value) {
              setState(() {
                value = value;
              });
            },
            min: 0,
            max: 100,
            divisions: 10,
            label: 'Label',
            activeColor: Colors.red,
            inactiveColor: Colors.grey,
            semanticFormatterCallback: (double value) {
              return '${value.round()} dollars';
            },
          ),
          Center(
            child: Slider(
              value: 0.5,
              onChanged: (double value) {
                setState(() {
                  value = value;
                });
              },
              min: 0,
              max: 100,
              divisions: 10,
              label: 'Label',
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
              semanticFormatterCallback: (double value) {
                return '${value.round()} dollars';
              },
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Slider(
              value: 0.5,
              onChanged: (double value) {
                setState(() {
                  value = value;
                });
              },
              min: 0,
              max: 100,
              divisions: 10,
              label: 'Label',
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
              semanticFormatterCallback: (double value) {
                return '\${value.round()} dollars';
              },
            ),
        Following are all the properties of the Slider widget
        value: double,
        onChanged: ValueChanged<double>,
        onChangeStart: ValueChanged<double>,
        onChangeEnd: ValueChanged<double>,
        min: double,
        max: double,
        divisions: int,
        label: String,
        activeColor: Color,
        inactiveColor: Color,
        semanticFormatterCallback: SemanticFormatterCallback,
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

//same for RangeSliderWidget

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RangeSlider Widget'),
      ),
      body: ListView(
        children: [
          RangeSlider(
            values: RangeValues(0.3, 0.7),
            onChanged: (RangeValues values) {
              setState(() {
                values = values;
              });
            },
            min: 0,
            max: 100,
            divisions: 10,
            labels: RangeLabels('Start', 'End'),
            activeColor: Colors.red,
            inactiveColor: Colors.grey,
          ),
          Center(
            child: RangeSlider(
              values: RangeValues(0.3, 0.7),
              onChanged: (RangeValues values) {
                setState(() {
                  values = values;
                });
              },
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels('Start', 'End'),
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''RangeSlider(
              values: RangeValues(0.3, 0.7),
              onChanged: (RangeValues values) {
                setState(() {
                  values = values;
                });
              },
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels('Start', 'End'),
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
              semanticFormatterCallback: (RangeValues values) {
                return '\${values.start.round()} to \${values.end.round()} dollars';
              },
            ),
        Following are all the properties of the RangeSlider widget
        values: RangeValues,
        onChanged: ValueChanged<RangeValues>,
        onChangeStart: ValueChanged<RangeValues>,
        onChangeEnd: ValueChanged<RangeValues>,
        min: double,
        max: double,
        divisions: int,
        labels: RangeLabels,
        activeColor: Color,
        inactiveColor: Color,
        semanticFormatterCallback: SemanticFormatterCallback,
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

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({Key? key}) : super(key: key);

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker Widget'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              _selectDate(context);
            },
            child: Text('Select Date'),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              selectedDate != null ? 'Selected Date: ${selectedDate!.toLocal()}' : 'No date selected',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 16),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''ElevatedButton(
  onPressed: () {
    _selectDate(context);
  },
  child: Text('Select Date'),
),
SizedBox(height: 16),
Center(
  child: Text(
    selectedDate != null
        ? 'Selected Date: \${selectedDate!.toLocal()}'
        : 'No date selected',
    style: TextStyle(fontSize: 16),
  ),
)''',
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2022),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
}

//TimePickerWidget

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TimePicker Widget'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              showTimePicker(
                //all parameters
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input,
                context: context,
              );
            },
            child: Text('Show TimePicker'),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''
              ElevatedButton(
            onPressed: () {
              showTimePicker(
               //all parameters
               initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input,
                context: context,
                
                
                
              );
            },
            child: Text('Show TimePicker'),
          );
        Following are all the properties of the TimePicker widget
        initialTime: TimeOfDay,
        initialEntryMode: TimePickerEntryMode,
        context: BuildContext,
        builder: WidgetBuilder,
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

/*
same for the following widgets:
•	TabBar
•	BottomNavigationBar
•	Drawer
•	AppBar


 */

//TabBarWidget

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar Widget'),
      ),
      body: ListView(
        children: [
          TabBar(
            isScrollable: true,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.all(8.0),
            indicatorColor: Colors.blue,
            indicatorWeight: 2.0,
            indicatorPadding: EdgeInsets.all(8.0),
            indicator: BoxDecoration(
              color: Colors.blue,
              border: Border(
                bottom: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
            ),
            tabs: [
              Tab(
                text: 'Tab 1',
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                text: 'Tab 2',
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                text: 'Tab 3',
                icon: Icon(Icons.directions_bike),
              ),
            ],
          ),
          Center(
            child: TabBar(
              isScrollable: true,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.all(8.0),
              indicatorColor: Colors.blue,
              indicatorWeight: 2.0,
              indicatorPadding: EdgeInsets.all(8.0),
              indicator: BoxDecoration(
                color: Colors.blue,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
              ),
              tabs: [
                Tab(
                  text: 'Tab 1',
                  icon: Icon(Icons.directions_car),
                ),
                Tab(
                  text: 'Tab 2',
                  icon: Icon(Icons.directions_transit),
                ),
                Tab(
                  text: 'Tab 3',
                  icon: Icon(Icons.directions_bike),
                ),
              ],
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''TabBar(
              controller: TabController(length: 3, vsync: this),
              isScrollable: true,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.all(8.0),
              indicatorColor: Colors.blue,
              indicatorWeight: 2.0,
              indicatorPadding: EdgeInsets.all(8.0),
              indicator: BoxDecoration(
                color: Colors.blue,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
              ),
              tabs: [
                Tab(
                  text: 'Tab 1',
                  icon: Icon(Icons.directions_car),
                ),
                Tab(
                  text: 'Tab 2',
                  icon: Icon(Icons.directions_transit),
                ),
                Tab(
                  text: 'Tab 3',
                  icon: Icon(Icons.directions_bike),
                ),
              ],
            ),
        Following are all the properties of the TabBar widget
        controller: TabController,
        isScrollable: bool,
        labelColor: Color,
        unselectedLabelColor: Color,
        labelPadding: EdgeInsets,
        indicatorColor: Color,
        indicatorWeight: double,
        indicatorPadding: EdgeInsets,
        indicator: Decoration,
        tabs: List<Widget>,
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

//BottomNavigationBarWidget

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Widget'),
      ),
      body: ListView(
        children: [
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
            currentIndex: 0,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 14.0,
            unselectedFontSize: 12.0,
            onTap: (int index) {
              setState(() {
                index = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue,
            elevation: 8.0,
            iconSize: 24.0,
            selectedLabelStyle: TextStyle(
              color: Colors.red,
              fontSize: 14.0,
            ),
            unselectedLabelStyle: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            key: Key('key'),
          ),
          Center(
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Business',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'School',
                ),
              ],
              currentIndex: 0,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.grey,
              selectedFontSize: 14.0,
              unselectedFontSize: 12.0,
              onTap: (int index) {
                setState(() {
                  index = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.blue,
              elevation: 8.0,
              iconSize: 24.0,
              selectedLabelStyle: TextStyle(
                color: Colors.red,
                fontSize: 14.0,
              ),
              unselectedLabelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              key: Key('key'),
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Business',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'School',
                ),
              ],
              currentIndex: 0,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.grey,
              selectedFontSize: 14.0,
              unselectedFontSize: 12.0,
              onTap: (int index) {
                setState(() {
                  index = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.blue,
              elevation: 8.0,
              iconSize: 24.0,
              selectedLabelStyle: TextStyle(
                color: Colors.red,
                fontSize: 14.0,
              ),
              unselectedLabelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              key: Key('key'),
            ),
        Following are all the properties of the BottomNavigationBar widget
        items: List<BottomNavigationBarItem>,
        currentIndex: int,
        selectedItemColor: Color,
        unselectedItemColor: Color,
        selectedFontSize: double,
        unselectedFontSize: double,
        onTap: ValueChanged<int>,
        type: BottomNavigationBarType,
        backgroundColor: Color,
        elevation: double,
        iconSize: double,
        selectedLabelStyle: TextStyle,
        unselectedLabelStyle: TextStyle,
        showSelectedLabels: bool,
        showUnselectedLabels: bool,
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

//DrawerWidget

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Widget'),
      ),
      body: ListView(
        children: [
          Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Center(
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Drawer Header',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Messages'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Drawer Header',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),

                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Messages'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
        Following are all the properties of the Drawer widget
        child: Widget,
        elevation: double,
        semanticLabel: String,
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

//AppBarWidget (all types of appbars)
/*
AppBarWidget(),
AppBarWithActionsWidget(),
SliverAppBarWidget(),
 */

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Standard AppBar'),
      ),
      body: Center(
        child: SelectableCodeView(
          code: '''AppBar(
  title: Text('Standard AppBar'),
)''',
          language: Language.DART,
          languageTheme: LanguageTheme.vscodeLight(),
          fontSize: 12.0,
          withZoom: true,
          withLinesCount: true,
          expanded: false,
        ),
      ),
    );
  }
}

class AppBarWithActionsWidget extends StatefulWidget {
  const AppBarWithActionsWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWithActionsWidget> createState() => _AppBarWithActionsWidgetState();
}

class _AppBarWithActionsWidgetState extends State<AppBarWithActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar with Actions'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle more action
            },
          ),
        ],
      ),
      body: Center(
        child: SelectableCodeView(
          code: '''AppBar(
  title: Text('AppBar with Actions'),
  actions: [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        // Handle search action
      },
    ),
    IconButton(
      icon: Icon(Icons.more_vert),
      onPressed: () {
        // Handle more action
      },
    ),
  ],
)''',
          language: Language.DART,
          languageTheme: LanguageTheme.vscodeLight(),
          fontSize: 12.0,
          withZoom: true,
          withLinesCount: true,
          expanded: false,
        ),
      ),
    );
  }
}

class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({Key? key}) : super(key: key);

  @override
  State<SliverAppBarWidget> createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver AppBar'),
              background: Image.network(
                'https://example.com/your_image.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
