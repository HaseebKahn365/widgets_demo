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
•	LinearProgressIndicator
•	CircularProgressIndicator
•	RefreshIndicator
•	Stepper



 */

import 'package:flutter/material.dart';
import 'package:selectable_code_view/sourceCodes/code_view_screen.dart';
import 'package:selectable_code_view/sourceCodes/languages/base.dart';
import 'package:selectable_code_view/sourceCodes/themes/theme.dart';

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

//same for circular progress indicator wiget but there should be animation
class CircularProgressIndicatorWidget extends StatefulWidget {
  const CircularProgressIndicatorWidget({super.key});

  @override
  State<CircularProgressIndicatorWidget> createState() => _CircularProgressIndicatorWidgetState();
}

class _CircularProgressIndicatorWidgetState extends State<CircularProgressIndicatorWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircularProgressIndicator Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.blue,
              semanticsLabel: 'semanticsLabel',
              semanticsValue: 'semanticsValue',
              strokeWidth: 10.0,
              value: 0.5,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
          ),
          SizedBox(height: 16), // Add some space
          Center(
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) => CircularProgressIndicator(
                backgroundColor: Colors.grey,
                color: Colors.blue,
                semanticsLabel: 'semanticsLabel',
                semanticsValue: 'semanticsValue',
                strokeWidth: 10.0,
                value: _animation.value, // Use the animation value
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              ),
            ),
          ),
          SizedBox(height: 16), // Add some space

          Center(
            //documentation for this widget using the selectable_code_view package .
            child: SelectableCodeView(
              code: '''CircularProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.blue,
              semanticsLabel: 'semanticsLabel',
              semanticsValue: 'semanticsValue',
              strokeWidth: 10.0,
              value: 0.5,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
        Following are all the properties of the CircularProgressIndicator widget
        backgroundColor: Color,
        color: Color,
        semanticsLabel: String,
        semanticsValue: String,
        strokeWidth: double,
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

//same for the refresh indicator widget

class RefreshIndicatorWidget extends StatefulWidget {
  const RefreshIndicatorWidget({super.key});

  @override
  State<RefreshIndicatorWidget> createState() => _RefreshIndicatorWidgetState();
}

class _RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RefreshIndicator Widget'),
      ),
      body: RefreshIndicator(
        backgroundColor: Colors.grey,
        color: Colors.blue,
        displacement: 40.0,
        notificationPredicate: (notification) {
          return true;
        },
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 2));
        },
        semanticsLabel: 'semanticsLabel',
        semanticsValue: 'semanticsValue',
        strokeWidth: 10.0,
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}

//same for the stepper widget

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper Widget'),
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep--;
            });
          }
        },
        onStepContinue: () {
          if (_currentStep < 2) {
            setState(() {
              _currentStep++;
            });
          }
        },
        onStepTapped: (step) {
          setState(() {
            _currentStep = step;
          });
        },
        steps: [
          Step(
            title: Text('Step 1'),
            content: Text('Content for Step 1'),
            state: _currentStep == 0 ? StepState.editing : StepState.complete,
          ),
          Step(
            title: Text('Step 2'),
            content: Text('Content for Step 2'),
            state: _currentStep == 1 ? StepState.editing : StepState.complete,
          ),
          Step(
            title: Text('Step 3'),
            content: Text('Content for Step 3'),
            state: _currentStep == 2 ? StepState.editing : StepState.complete,
          ),
        ],
      ),
    );
  }
}
