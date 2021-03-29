import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget drawerWidget = Drawer(
  child: Column(
    children: [
      UserAccountsDrawerHeader(
        accountName: Text("Chenhao Wei"),
        accountEmail: Text("wchhm8050@gmail.com"),
        decoration: BoxDecoration(
          // color: Theme.of(context).primaryColor,
          image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1579546929662-711aa81148cf?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
            ),
            fit: BoxFit.cover,
          ),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://lh3.googleusercontent.com/ogw/ADGmqu-SojQWiiu0b6YmdHiVhnYrRJ7RUnViywyn15tXWQ=s83-c-mo"),
        ),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("设置项1"),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("设置项2"),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("设置项3"),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("设置项4"),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("设置项5"),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("设置项6"),
      ),
    ],
  ),
);
