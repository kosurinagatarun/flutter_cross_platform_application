import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

// Conditional imports based on the platform
import 'mobile_web_view.dart'
  if (dart.library.io) 'desktop_web_view.dart'
  if (dart.library.html) 'web_web_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digitali360',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const WebViewScreen(),
    );
  }
}
