import 'package:flutter/material.dart';
import 'package:webview_windows/webview_windows.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  final _controller = WebviewController();

  @override
  void initState() {
    super.initState();
    initWebView();
  }

  Future<void> initWebView() async {
    await _controller.initialize();
    await _controller.loadUrl('https://digitali360.in/authentication/login');
    setState(() {});  // Refresh to display the WebView after initialization
  }

  @override
  Widget build(BuildContext context) {
    // If the above setup still causes problems, consider removing checks and directly using the WebView
    return Scaffold(
      body: Webview(_controller),
    );
  }
}
