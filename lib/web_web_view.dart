// web_web_view.dart
import 'package:flutter/material.dart';
import 'dart:html' as html;

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    html.window.location.href = 'https://digitali360.in/authentication/login';
    return Scaffold(
      body: Center(child: Text('Redirecting...')),
    );
  }
}
