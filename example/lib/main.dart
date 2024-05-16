import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Define a method channel
  static const platform = MethodChannel('callvalidator');

  String _platformVersion = 'Unknown';
  bool _isInCall = false;

  @override
  void initState() {
    super.initState();
    _getPlatformVersion();
    _checkForActiveCall();
  }

  // Method to get the platform version from the native side
  Future<void> _getPlatformVersion() async {
    String platformVersion;
    try {
      final String result = await platform.invokeMethod('getPlatformVersion');
      platformVersion = 'Platform version: $result';
    } on PlatformException catch (e) {
      platformVersion = "Failed to get platform version: '${e.message}'.";
    }

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  // Method to check for an active call
  Future<void> _checkForActiveCall() async {
    bool isInCall;
    try {
      final bool result = await platform.invokeMethod('checkForActiveCall');
      isInCall = result;
    } on PlatformException catch (e) {
      isInCall = false; // Handle error here
    }

    setState(() {
      _isInCall = isInCall;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CallValidator Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Platform Version: $_platformVersion\n'),
              Text('Is in Call: $_isInCall'),
            ],
          ),
        ),
      ),
    );
  }
}
