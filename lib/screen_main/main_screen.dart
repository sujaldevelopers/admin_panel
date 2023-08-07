import 'package:admin_panel/screen_main/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../controllers/MenuController.dart';
import '../helper_model/dasbord.dart';
import '../helper_model/side_menu.dart';
import 'dashbord/dashbord_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))Expanded(
                  child:SideMenu(),
              ),
              Expanded(
                flex: 5,
                child: DashbordScreen(),
              ),
            ],

          )),
    );
  }
}
