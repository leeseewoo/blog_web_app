import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController webViewController = WebViewController()
    ..loadRequest(Uri.parse('https://blog.codefactory.ai'))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  // 1) const  생성자
  HomeScreen({Key? key}) : super(key: key);

  // 2)   주석 추가 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1)
      appBar: AppBar(
        // 2)
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),

        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {
              webViewController
                  .loadRequest(Uri.parse('https://blog.codefactory.ai'));
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}
