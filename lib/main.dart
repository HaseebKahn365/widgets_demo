import 'package:flutter/material.dart';
import 'package:widgets_demo/1.layout_widgets.dart';
import 'package:widgets_demo/2.text_typography.dart';
import 'package:widgets_demo/3.input_and_selection.dart';
import 'package:widgets_demo/4.buttons_and_indicators.dart';
import 'package:widgets_demo/5.dialogues_and_sheets.dart';
import 'package:widgets_demo/6.containers_and_cards.dart';
import 'package:widgets_demo/7.images_icons_avatars.dart';
import 'package:widgets_demo/8.progress_and_loading.dart';
import 'package:widgets_demo/9.sliders_and_pickers.dart';
/*

# widgets_demo

Overview of the Project:
The goal of the Flutter Material Widgets Showcase is to facilitate developers in exploring and comprehending the expansive range of widgets offered by Flutter. This project is your compass, guiding you through the process of building visually appealing and consistent user interfaces. Whether you're a novice venturing into the world of Flutter or a seasoned developer in need of a quick reference, this showcase will stand as a valuable resource.
Widget Categories:
1.	Layout Widgets:
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
•	...
2.	Text and Typography:
•	Text
•	RichText
•	DefaultTextStyle
•	TextStyle
•	...
3.	Input and Selection:
•	TextField
•	Checkbox
•	Radio
•	Switch
•	...
4.	Buttons and Indicators:
•	ElevatedButton
•	TextButton
•	OutlinedButton
•	IconButton
•	FloatingActionButton
•	CupertinoButton
•	...
5.	Dialogs, Alerts, and Bottom Sheets:
•	AlertDialog
•	SimpleDialog
•	BottomSheet
•	PopupMenuButton
•	...
6.	Containers and Cards:
•	Card
•	ListTile
•	GridView
•	ExpansionPanel
•	Chip
•	DecoratedBox
•	Container
•	...
7.	Images, Icons, and Avatars:
•	Image
•	Icon
•	CircleAvatar
•	ClipOval
•	...
8.	Progress and Loading:
•	LinearProgressIndicator
•	CircularProgressIndicator
•	RefreshIndicator
•	Stepper
•	...
9.	Sliders and Pickers:
•	Slider
•	RangeSlider
•	DatePicker
•	TimePicker
•	...
10.	Tabs and Navigation:
•	TabBar
•	BottomNavigationBar
•	Drawer
•	AppBar
•	...
Developemment Process:
We will start off with home page that will contain a listview as a body which will comprise of Expansion tiles each representing the category of the widgets and containing the widgets mentioned in respective categories. On clicking the tile of category, it should expand, highlighting the widgets when we click on the widget tile, it should navigate us to the widget page where we can see the widget along with all of its code using the dart_code_viewer package .

 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shadowColor: Theme.of(context).colorScheme.primary,
              elevation: 10,
              child: ExpansionTile(
                title: const Text('Layout Widgets'),
                expandedAlignment: Alignment.center,
                children: <Widget>[
                  ListTile(
                    title: const Text('Container'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContainerWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Row'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RowWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Column'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ColumnWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('ListView'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListViewWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Stack'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StackWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Expanded'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExpandedWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Flexible'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FlexibleWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Wrap'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WrapWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('SizedBox'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SizedBoxWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('ConstrainedBox'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ConstrainedBoxWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('AspectRatio'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AspectRatioWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('FittedBox'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FittedBoxWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shadowColor: Theme.of(context).colorScheme.primary,
              elevation: 10,
              child: ExpansionTile(
                title: const Text('Text and Typography'),
                children: <Widget>[
                  ListTile(
                    title: const Text('Text'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TextWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('RichText'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RichTextWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('DefaultTextStyle'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DefaultTextStyleWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('TextStyle'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TextStyleWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          //expansion tile for input and selection
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shadowColor: Theme.of(context).colorScheme.primary,
              elevation: 10,
              child: ExpansionTile(
                title: const Text('Input and Selection'),
                children: <Widget>[
                  ListTile(
                    title: const Text('TextField'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TextFieldWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Checkbox'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CheckboxWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Radio'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RadioWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Switch'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SwitchWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          //expansion tile for buttons and indicators

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shadowColor: Theme.of(context).colorScheme.primary,
              elevation: 10,
              child: ExpansionTile(
                title: const Text('Buttons and Indicators'),
                children: <Widget>[
                  ListTile(
                    title: const Text('ElevatedButton'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ElevatedButtonWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('TextButton'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TextButtonWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('OutlinedButton'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OutlinedButtonWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('IconButton'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IconButtonWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('FloatingActionButton'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FloatingActionButtonWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('CupertinoButton'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CupertinoButtonWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          //expansion tile for dialogs, alerts and bottom sheets

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shadowColor: Theme.of(context).colorScheme.primary,
              elevation: 10,
              child: ExpansionTile(
                title: const Text('Dialogs, Alerts, and Bottom Sheets'),
                children: <Widget>[
                  ListTile(
                    title: const Text('AlertDialog'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlertDialogWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('SimpleDialog'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SimpleDialogWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('BottomSheet'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomSheetWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('PopupMenuButton'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PopupMenuButtonWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          //expansion tile for containers and cards

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shadowColor: Theme.of(context).colorScheme.primary,
              elevation: 10,
              child: ExpansionTile(
                title: const Text('Containers and Cards'),
                children: <Widget>[
                  ListTile(
                    title: const Text('Card'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CardWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('ListTile'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListTileWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('GridView'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GridViewWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('ExpansionPanel'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExpansionPanelWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Chip'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChipWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('DecoratedBox'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DecoratedBoxWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          //expansion tile for images, icons and avatars

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shadowColor: Theme.of(context).colorScheme.primary,
              elevation: 10,
              child: ExpansionTile(
                title: const Text('Images, Icons, and Avatars'),
                children: <Widget>[
                  ListTile(
                    title: const Text('Image'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImageWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Icon'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IconWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('CircleAvatar'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CircleAvatarWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('ClipOval'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ClipOvalWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          //expansion tile for progress and loading

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shadowColor: Theme.of(context).colorScheme.primary,
              elevation: 10,
              child: ExpansionTile(
                title: const Text('Progress and Loading'),
                children: <Widget>[
                  ListTile(
                    title: const Text('LinearProgressIndicator'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LinearProgressIndicatorWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('CircularProgressIndicator'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CircularProgressIndicatorWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('RefreshIndicator'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RefreshIndicatorWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Stepper'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StepperWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          //expansion tile for sliders and pickers

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shadowColor: Theme.of(context).colorScheme.primary,
              elevation: 10,
              child: ExpansionTile(
                title: const Text('Sliders and Pickers'),
                children: <Widget>[
                  ListTile(
                    title: const Text('Slider'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SliderWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('RangeSlider'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RangeSliderWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('DatePicker'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DatePickerWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('TimePicker'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TimePickerWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          //expansion tile for tabs and navigation

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shadowColor: Theme.of(context).colorScheme.primary,
              elevation: 10,
              child: ExpansionTile(
                title: const Text('Tabs and Navigation'),
                children: <Widget>[
                  ListTile(
                    title: const Text('TabBar'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabBarWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('BottomNavigationBar'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavigationBarWidget()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('AppBar'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AppBarWidget()),
                      );
                    },
                  ),

                  //LIST TILES FOR OTHER TYPES OF APPBARS
                  ListTile(
                    title: const Text('SliverAppBar'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SliverAppBarWidget()),
                      );
                    },
                  ),

                  //APPBAR WITH ACTIONS
                  ListTile(
                    title: const Text('AppBar with Actions'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AppBarWithActionsWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
