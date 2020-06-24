import 'package:flutter/material.dart';
import 'package:jamefood/screens/main_rider.dart';
import 'package:jamefood/screens/main_shop.dart';
import 'package:jamefood/screens/main_user.dart';
import 'package:jamefood/screens/signin.dart';
import 'package:jamefood/screens/signup.dart';
import 'package:jamefood/utility/my_style.dart';
import 'package:jamefood/utility/normal_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    checkPreferance();
  }

  Future<Null> checkPreferance() async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String chooseType = preferences.getString('ChooseType');
      print('chooseType = $chooseType');
      if (chooseType != null && chooseType.isNotEmpty) {
        if (chooseType == 'User') {
          routeToService(MainUser());
        } else if (chooseType == 'Shop') {
          routeToService(MainShop());
        } else if (chooseType == 'Rider') {
          routeToService(MainRider());
        } else {
          nomalDialog(context, 'Error UserType');
        }
      }
    } catch (e) {}
  }

  void routeToService(Widget myWiget) {
    MaterialPageRoute pageRoute = MaterialPageRoute(
      builder: (context) => myWiget,
    );
    Navigator.pushAndRemoveUntil(context, pageRoute, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: showDrawer(),
    );
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[
            showHeadDrawer(),
            signInMenu(),
            signUpMenu(),
          ],
        ),
      );

  ListTile signInMenu() {
    return ListTile(
      leading: Icon(Icons.android),
      title: Text('Sign In'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route = MaterialPageRoute(
          builder: (value) => SignIn(),
        );
        Navigator.push(context, route);
      },
    );
  }

  ListTile signUpMenu() {
    return ListTile(
      leading: Icon(Icons.android),
      title: Text('Sign Up'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route = MaterialPageRoute(
          builder: (value) => SignUp(),
        );
        Navigator.push(context, route);
      },
    );
  }

  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
      decoration: MyStyle().myBoxdecoration('shop.jpg'),
      currentAccountPicture: MyStyle().showLogo(),
      accountName: Text('Guest'),
      accountEmail: Text('Please Login'),
    );
  }
}
