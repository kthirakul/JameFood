import 'package:flutter/material.dart';
import 'package:jamefood/utility/my_style.dart';
import 'package:jamefood/utility/signout_process.dart';

class MainRider extends StatefulWidget {
  @override
  _MainRiderState createState() => _MainRiderState();
}

class _MainRiderState extends State<MainRider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Rider'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                signOutProcess(context);
              })
        ],
      ),
    );
  }

  Drawer showDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          showHead(),
        ],
      ),
    );
  }



  UserAccountsDrawerHeader showHead() {
    return UserAccountsDrawerHeader(
        decoration: MyStyle().myBoxdecoration('user.jpg'),
        currentAccountPicture: MyStyle().showLogo(),
        accountName: Text('Name Login'),
        accountEmail: Text('Login'));
  }
}
