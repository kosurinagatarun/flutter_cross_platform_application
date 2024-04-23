// mobile_web_view.dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const WebView(
        initialUrl: 'https://digitali360.in/authentication/login',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
