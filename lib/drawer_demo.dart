import 'package:flutter/material.dart';

class Drawer_demo extends StatefulWidget {
  const Drawer_demo({Key? key}) : super(key: key);

  @override
  State<Drawer_demo> createState() => _Drawer_demoState();
}

class _Drawer_demoState extends State<Drawer_demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: Column(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.blue),
              child: Container(
                width: 400,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://wallpapers.com/images/featured-full/cool-profile-pictures-4co57dtwk64fb7lv.jpg"))),
                    ),
                    Text(
                      "Sarah Abs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text("sarah@abs.com")
                  ],
                ),
              )),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
            ),
            title: Text("favorite"),
          ),
          ListTile(
            leading: Icon(
              Icons.workspaces_filled,
            ),
            title: Text("WorkFlow"),
          ),
          ListTile(
            leading: Icon(
              Icons.update,
            ),
            title: Text("Updates"),
          ),
          Divider(
            height: 100,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.eight_k_plus_outlined,
            ),
            title: Text("Plugin"),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications,
            ),
            title: Text("Notification"),
          ),
        ],
      )),
    );
  }
}
