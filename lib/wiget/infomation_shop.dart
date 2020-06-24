import 'package:flutter/material.dart';
import 'package:jamefood/screens/add_info_shop.dart';
import 'package:jamefood/utility/my_style.dart';

class InfomationShop extends StatefulWidget {
  @override
  _InfomationShopState createState() => _InfomationShopState();
}

class _InfomationShopState extends State<InfomationShop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        MyStyle().titleCenter(context, 'ยังไม่มีข้อมูล กรุณาเพื่มข้อมูล'),
        addAndeditButton()
      ],
    );
  }

  Row addAndeditButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
              child: FloatingActionButton(
                child: Icon(Icons.edit),
                onPressed: () {
                  routeToAddInfo();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  void routeToAddInfo() {
    MaterialPageRoute pageRoute =
        MaterialPageRoute(builder: (context) => AddInfoShop());
    Navigator.push(context, pageRoute);
  }
}
