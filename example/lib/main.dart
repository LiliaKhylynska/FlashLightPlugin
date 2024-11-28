import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flash_light_plugin/flash_light_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: Column(
            children: [
              OutlinedButton(
                  onPressed: FlashLightPlugin.turnOn, child: Text('Turn On')),
              OutlinedButton(
                  onPressed: FlashLightPlugin.turnOff, child: Text('Turn Off')),
            ],
          ),
        ),
      ),
    );
  }
}
