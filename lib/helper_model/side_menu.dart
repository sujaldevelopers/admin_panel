import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dasbord.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/image/logo.png"),
            ),
            DrawerListTile(
              title: "Dashbord",
              svgSrc: "assets/icons/menu_dashboard.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Transaction",
              svgSrc: "assets/icons/menu_tran.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Task",
              svgSrc: "assets/icons/menu_task.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Document",
              svgSrc: "assets/icons/menu_doc.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Store",
              svgSrc: "assets/icons/menu_store.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Notification",
              svgSrc: "assets/icons/menu_notification.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Profile",
              svgSrc: "assets/icons/menu_profile.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Settings",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
