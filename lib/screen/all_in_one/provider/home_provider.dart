import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home_p extends ChangeNotifier{
  WebViewController?webViewController;
  List Images=[
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/10.jpg",
  ];

  List name=[
    "Wikipedia",
    "Java Point",
    "w3 School",
    "Tutorial Points",
    "Hotstar",
    "Prime Video",
    "Netflix",
    "Sony Liv",
  ];

  List urls=[
    "https://www.wikipedia.org/",
  "https://www.javatpoint.com/",
    "https://www.w3schools.com/",
    "https://www.tutorialspoint.com/",
    "https://www.hotstar.com/in",
    "https://www.primevideo.com/",
    "https://www.netflix.com/in/",
    "https://www.sonyliv.com/",
  ];

  void loadurl(int index)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${urls[index]}"));
  }
}
