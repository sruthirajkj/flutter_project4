import 'package:flutter/material.dart';

class Container_add extends StatefulWidget {
  const Container_add({Key? key}) : super(key: key);

  @override
  State<Container_add> createState() => _Container_addState();
}

class _Container_addState extends State<Container_add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: 90,
            width: 90,
           // color: Colors.blue,
            child: Stack(
              children: [
                Container(
                  height: 90,
                  width: 90,

                  decoration: BoxDecoration(
                      color: Colors.red,
                    shape: BoxShape.circle
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                    child: Icon(Icons.camera_alt))
              ],
            ),
          )),
    );
  }
}
