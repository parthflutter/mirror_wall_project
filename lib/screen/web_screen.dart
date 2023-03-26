import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'all_in_one/provider/home_provider.dart';

class screen_2 extends StatefulWidget {
  const screen_2({Key? key}) : super(key: key);

  @override
  State<screen_2> createState() => _screen_2State();
}
Home_p?home_pt,home_p;
class _screen_2State extends State<screen_2> {
  @override
  Widget build(BuildContext context) {
    home_p=Provider.of<Home_p>(context,listen: false);
    home_pt=Provider.of<Home_p>(context,listen: true);
    return SafeArea(child: Scaffold(
      body: WebViewWidget(controller: home_p!.webViewController!),
    ),
    );
  }
}
