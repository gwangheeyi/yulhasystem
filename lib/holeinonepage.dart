import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HoleInOnePage extends StatefulWidget {
  const HoleInOnePage({super.key});

  @override
  State<HoleInOnePage> createState() => _HoleInOnePageState();
}

class _HoleInOnePageState extends State<HoleInOnePage> {
  final WebViewController controller=WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(Uri.parse("http://yulhagolf.com/roomorder/holeinone.php"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:WebViewWidget(
        controller: controller,
      ),
    );
  }
}
