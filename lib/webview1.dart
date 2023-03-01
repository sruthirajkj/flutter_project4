import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView1 extends StatefulWidget {
  const WebView1({Key? key}) : super(key: key);

  @override
  State<WebView1> createState() => _WebView1State();
}

class _WebView1State extends State<WebView1> {
 LocationData? locationData;
  loctaion()async{
    Location location=Location();
    LocationData locationData1= await location.getLocation();
    controller!.loadRequest(Uri.parse(
        "https://www.google.com/maps/@${locationData1.latitude},${locationData1.longitude},15z"));

    setState(() {
      locationData=locationData1;
    });
     print(locationData!.latitude);
     print(locationData!.longitude);

  }
  WebViewController? controller;
  @override
  void initState() {
    loctaion();
    // TODO: implement initState
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(
          "https://www.google.com/maps/@11.3010736,75.8233402,13z"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            loctaion();

          },
          child: Text(
            "Re_centre",
            style: TextStyle(fontSize: 10),
          )),
      body: SafeArea(
          child: WebViewWidget(
        controller: controller!,
      )
      ),
    );
  }
}
