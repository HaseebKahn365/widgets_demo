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
•	Image
•	Icon
•	CircleAvatar
•	ClipOval


 */

//ImageWidget

import 'package:flutter/material.dart';
import 'package:selectable_code_view/sourceCodes/code_view_screen.dart';
import 'package:selectable_code_view/sourceCodes/languages/base.dart';
import 'package:selectable_code_view/sourceCodes/themes/theme.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: InteractiveViewer(
              child: Image(
                image: NetworkImage('https://media.cnn.com/api/v1/images/stellar/prod/191110161859-satya-nadella-microsoft-1110.jpg?q=x_6,y_126,h_1684,w_2993,c_crop/w_800'),
                width: 800,
                height: 450,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
                matchTextDirection: false,
                gaplessPlayback: false,
                filterQuality: FilterQuality.low,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes! : null,
                      ),
                    );
                  }
                },
                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                  return Text('Error: $error');
                },
                frameBuilder: (BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded) {
                    return child;
                  } else {
                    return AnimatedOpacity(
                      child: child,
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOut,
                    );
                  }
                },
                semanticLabel: 'Image',
                excludeFromSemantics: false,
                key: Key('key'),
              ),
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''Image(
              image: AssetImage('assets/images/1.jpg'),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              alignment: Alignment.center,
              repeat: ImageRepeat.noRepeat,
              matchTextDirection: false,
              gaplessPlayback: false,
              filterQuality: FilterQuality.low,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                }
              },
              errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                return Text('Error: \$error');
              },
              frameBuilder: (BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
                if (wasSynchronouslyLoaded) {
                  return child;
                } else {
                  return AnimatedOpacity(
                    child: child,
                    opacity: frame == null ? 0 : 1,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeOut,
                  );
                }
              },

              semanticLabel: 'Image',
              excludeFromSemantics: false,
              key: Key('key'),
            ),
          ),
        ],
      ),
    );
    
  }
}
  
  ''',
              language: Language.DART,
              languageTheme: LanguageTheme.vscodeLight(),
              fontSize: 12.0,
              withZoom: true,
              withLinesCount: true,
              expanded: false,
            ),
          )
        ],
      ),
    );
  }
}

//same for IconWidget

class IconWidget extends StatefulWidget {
  const IconWidget({super.key});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 100.0,
              semanticLabel: 'Heart',
              textDirection: TextDirection.ltr,
              key: Key('key'),
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''Icon(
              Icons.favorite,
              color: Colors.red,
              size: 24.0,
              semanticLabel: 'Heart',
              textDirection: TextDirection.ltr,
              key: Key('key'),
            ),
          ),
        ],
      ),
    );
  }
}
''',
              language: Language.DART,
              languageTheme: LanguageTheme.vscodeLight(),
              fontSize: 12.0,
              withZoom: true,
              withLinesCount: true,
              expanded: false,
            ),
          )
        ],
      ),
    );
  }
}

//same for CircleAvatarWidget

class CircleAvatarWidget extends StatefulWidget {
  const CircleAvatarWidget({super.key});

  @override
  State<CircleAvatarWidget> createState() => _CircleAvatarWidgetState();
}

class _CircleAvatarWidgetState extends State<CircleAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleAvatar Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://media.cnn.com/api/v1/images/stellar/prod/191110161859-satya-nadella-microsoft-1110.jpg?q=x_6,y_126,h_1684,w_2993,c_crop/w_800'),
              radius: 100.0,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: Text(
                'S',
                style: TextStyle(fontSize: 100.0, shadows: [Shadow(color: Colors.black, blurRadius: 10.0, offset: Offset(5.0, 5.0))]),
              ),
              key: Key('key'),
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''CircleAvatar(
              backgroundImage: NetworkImage('https://media.cnn.com/api/v1/images/stellar/prod/191110161859-satya-nadella-microsoft-1110.jpg?q=x_6,y_126,h_1684,w_2993,c_crop/w_800'),
              radius: 50.0,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black,
              child: Text('S'),
              key: Key('key'),
            ),
          ),
        ],
      ),
    );
  }
}
''',
              language: Language.DART,
              languageTheme: LanguageTheme.vscodeLight(),
              fontSize: 12.0,
              withZoom: true,
              withLinesCount: true,
              expanded: false,
            ),
          )
        ],
      ),
    );
  }
}

//same for ClipOvalWidget

class ClipOvalWidget extends StatefulWidget {
  const ClipOvalWidget({super.key});

  @override
  State<ClipOvalWidget> createState() => _ClipOvalWidgetState();
}

class _ClipOvalWidgetState extends State<ClipOvalWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval Widget'),
      ),
      body: ListView(
        children: [
          Center(
            child: ClipOval(
              child: Image(
                image: NetworkImage('https://media.cnn.com/api/v1/images/stellar/prod/191110161859-satya-nadella-microsoft-1110.jpg?q=x_6,y_126,h_1684,w_2993,c_crop/w_800'),
                width: 300,
                height: 300,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
                matchTextDirection: false,
                gaplessPlayback: false,
                filterQuality: FilterQuality.low,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes! : null,
                      ),
                    );
                  }
                },
                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                  return Text('Error: $error');
                },
                frameBuilder: (BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded) {
                    return child;
                  } else {
                    return AnimatedOpacity(
                      child: child,
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOut,
                    );
                  }
                },
                semanticLabel: 'Image',
                excludeFromSemantics: false,
                key: Key('key'),
              ),
            ),
          ),
          Center(
            child: SelectableCodeView(
              code: '''ClipOval(
              child: Image(
                image: NetworkImage('https://media.cnn.com/api/v1/images/stellar/prod/191110161859-satya-nadella-microsoft-1110.jpg?q=x_6,y_126,h_1684,w_2993,c_crop/w_800'),
                width: 100,
                height: 100,

                fit: BoxFit.cover,

                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
                matchTextDirection: false,
                gaplessPlayback: false,
                filterQuality: FilterQuality.low,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes! : null,
                      ),
                    );
                  }
                },
                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                  return Text('Error: \$error');
                },
                frameBuilder: (BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded) {
                    return child;
                  } else {
                    return AnimatedOpacity(
                      child: child,
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOut,
                    );
                  }
                },
                semanticLabel: 'Image',
                excludeFromSemantics: false,
                key: Key('key'),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
''',
              language: Language.DART,
              languageTheme: LanguageTheme.vscodeLight(),
              fontSize: 12.0,
              withZoom: true,
              withLinesCount: true,
              expanded: false,
            ),
          )
        ],
      ),
    );
  }
}
