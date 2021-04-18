# Flutter Install
Flutter official installation guide:
[https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)

## Dependencies:
- xcode need to be installed for iOS app development. 
- Flutter uses version management system behind the scene hence git is a dependency so make sure to [download](https://git-scm.com/downloads) it.

NOTE: Flutter uses git for installation and upgrade. We recommend installing Xcode, which includes git, but you can also install git separately.

## Flutter Tool download and setup
Unzip the downloaded flutter SDK and save it somewhere from where yoc can use it from, for us its save at below path:
`/Users/XYZ/Development/Tools/flutter`

To access flutter tool from the command line we need to add path to either `/flutter/bin` or we can add this to our machine user profile. 
Add it to User profile to set paths for your command line:
- Go to users folder
- cmd + shift + . to show hidden files
- .zshrc file - right click - `open with text edit`
- save, quit terminal and restart
- run flutter doctor
- if there is some opening issue run
  - On your Mac, choose Apple menu > System Preferences, click Security & Privacy, then click General >>  "Allow anyway"


## Flutter Xcode setup
Once Flutter tool, xcode and git is installed run below command to access xcode from your command line:
- `sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer`
- `sudo xcodebuild -runFirstLaunch`
- `sudo xcodebuild -license` (agree with the terms)

### To open iOS simulator
`open -a Simulator` from command line or xcode. Once you have the simulator device running you can start the flutter app by running `flutter run` but first lets set-up the project:

- `flutter create my_app` - make sure no spaces or hyphens in the project names, only underscores
- `cd my_app`
- `flutter run`
- now you should be able to see your created app on the simulator


## Flutter Android setup
- Download [Android Studio](https://developer.android.com/studio)
- install and store it in the applications
- open android studio and go through the set-up steps (choose no imports for initial screen)
- Once installed > open the above created app project with Android studio
  - Plugin Stupport Notice > Click Configure plugin > see latest Flutter selected > choose Accept and Install
  - restart Android Studio > Update if any notification regarding updates

**Open project in emulator**
- Tools > AVD (Andriod Virtual Device) Manager
  - Create a new device
  - Pixel 4 > x86 Image > choose highest system image (selected by default)
  - Emulated Performance - select Hardware for faster emulator > Finish
- Now this new device has been added to the AVD list. Hit play button to start the emulator.
- run `flutter run` from commandline
- License issue - run `flutter doctor --android-licenses` > accept licenses
- Once above resolved you can see the same above app loaded via Android emulator 