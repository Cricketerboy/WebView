import 'package:flutter/material.dart';
import 'package:webview/web_view_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WebView',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Home(),
          '/webViewContainer': (context) => WebViewContainer(),
        });
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView Flutter'),
        centerTitle: true,
      ),
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/webViewContainer');
        },
        child: Text('Open Webview'),
      ),
    );
  }
}
