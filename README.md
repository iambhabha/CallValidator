# callvalidator

CallValidator is a Flutter Dart plugin designed to enhance code quality by validating function calls and returning a boolean value indicating their validity. With CallValidator, developers can easily check the correctness of function invocations within their Flutter applications. Whether it's ensuring the proper parameters are passed or verifying the function's existence, CallValidator offers a seamless solution for error prevention and code validation. By integrating CallValidator into your project, you can enhance your development workflow and minimize potential runtime errors, resulting in more robust and reliable Flutter applications.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Callvalidator Package

The `Callvalidator` package provides a simple interface to check the platform version and determine if there is an active call on the device. This package is implemented using the Singleton pattern to ensure a single instance is used throughout the application.

## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  callvalidator: ^1.0.0
```
  
```
import 'package:callvalidator/callvalidator.dart';
``` 

```
void main() async {
  // Access the singleton instance
  Callvalidator callValidator = Callvalidator.instance;

  // Get the platform version
  String? platformVersion = await callValidator.getPlatformVersion();
  print('Platform Version: $platformVersion');

  // Check for active call
  bool? isActiveCall = await callValidator.checkForActiveCall();
  print('Is there an active call? $isActiveCall');
}


import 'package:flutter/material.dart';
import 'package:callvalidator/callvalidator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Callvalidator Example'),
        ),
        body: Center(
          child: FutureBuilder(
            future: _checkForCall(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Text('Is there an active call? ${snapshot.data}');
              }
            },
          ),
        ),
      ),
    );
  }

  Future<bool?> _checkForCall() async {
    Callvalidator callValidator = Callvalidator.instance;
    return await callValidator.checkForActiveCall();
  }
}
```

