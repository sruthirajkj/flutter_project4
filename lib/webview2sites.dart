import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewTabar extends StatefulWidget {
  const WebViewTabar({Key? key}) : super(key: key);

  @override
  State<WebViewTabar> createState() => _WebViewTabarState();
}

class _WebViewTabarState extends State<WebViewTabar>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  WebViewController? controller1;
  WebViewController? controller2;
  WebViewController? controller3;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
    controller1 = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
          Uri.parse("https://www.google.com/maps/@11.3010736,75.8233402,13z"));
    controller2 = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.instagram.com"));
    controller3 = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.facebook.com/login"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottom: TabBar(
        controller: tabController,
        tabs: [Text("GoogleMap"), Text("Instagarm"), Text("FaceBook")],
      )),
      body: TabBarView(controller: tabController, children: [
        Container(
            child: WebViewWidget(
          controller: controller1!,
        )),
        Container(child: WebViewWidget(controller: controller2!)),
        Container(child: WebViewWidget(controller: controller3!))
      ]),
    );
  }
}
