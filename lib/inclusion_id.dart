import 'package:flutter/material.dart';
import 'package:esusu_inclusion_id/bottom_nav.dart';
import 'package:esusu_inclusion_id/page_selector.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 4),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => SimplePageSelector()),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/inclusion_id_gif.gif",
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}

class InclusionIdWebPage extends StatefulWidget {
  const InclusionIdWebPage({Key? key}) : super(key: key);

  @override
  _InclusionIdWebPageState createState() => _InclusionIdWebPageState();
}

class _InclusionIdWebPageState extends State<InclusionIdWebPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: WebView(
      initialUrl: 'https://esusu.app/inclusionid',
      javascriptMode: JavascriptMode.unrestricted,
      allowsInlineMediaPlayback: false,
    )));
  }
}

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({Key? key}) : super(key: key);

  @override
  _SecondSplashScreenState createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 4),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => WebIndexPage()),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/inclusion_id_gif.gif",
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
