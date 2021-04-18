# Flutter Architecture
In Flutter teh idea is to build teh UI as Code: Build as a widget tree but with the flexibility to embrace platform specific differences whilst working in one codebase. So if there need to be differences between iOS app and Android app and web app need to exexcuted different codes based on the paltform it'll run upon. We can achieve this even though we have one codebase. 

## Widgets
In Flutter everything is a widget. For exampale one screen can be broken into header, main body and footer section which each contains individual elements like button, form etc, think of all of these as widgets. Smallers widgets inside section widgets and all the section widgets inside a page widget. (Similar as components 1 main page as componennt which has smaller section components which includes building block components to create a feature).

The whole app is widget tree!
```

                                                     App                         
                                                      |
                            ________________________________________________________
                          |                                                         |
                      Job Search                                                Job Admin
                          |                                                         |
                      All Jobs                                             _________________________
                          |                                               |                         |
                     Job Details                                      Open Jobs                  Craete Job
                  __________________                                                                |
                |                    |                                                            Job Form
            Main Image            Content                                                           |
                                                                                              ________________
                                                                                            |                 |
                                                                                        Add Image           Add Map

``` 

### UI as code
- No Drag and Drop
- No visual Editor
- Code Only
- Extremely straight forward

### One Codebase
- Files will be saved as .dart ie, main.dart, list.dart, home.dart
- You can find out which platform you are running the codebase upon and you can render different content based on that platform
`child: Theme.of(context).platform == TargetPlatform.iOS ? RaisedButton : CupertinoButton // RaisedButton - Google & CupertinoButton - iOS`

### How does Flutter and Dart works?
Dart code uses the Flutter API (application programming language) which means flutter gives you a collection of utility functions and widgets that you can use to build the interface you want to build which will be build for iOS / Android / Web.

Flutter simply compiles that Dart code to the native codes (iOS specific code, android sepcific code or web specific code) for these different platform. The compilation is done with the help of `Flutter SDK`. As a result, a real app spit out with highly optimised high performance code based on your code but its not your actual code but just the compiled version of your code. Flutter out of the box gives you high performance which is a huge advantage of flutter apps.

#### Flutter doesn't use platform primitives
Flutter doesn't point any of your widget back to native UI of the plantform (unlike react native, ie UIButton in iOS or widget.Button in Android). Instead when a widget is requested on the UI Flutter uses the custom implementation. Flutter directly controls every pixel drawn on the screen which provides a lot of flexibility. 

**Flutter Benefits:**
- Great performance
- Full control
- less platform -limitations / no translations loss