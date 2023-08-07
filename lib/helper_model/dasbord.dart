import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerListTile extends StatelessWidget {
  final String title,svgSrc;
  final VoidCallback press;
  DrawerListTile ({Key? key,
  required this.title,
  required this.svgSrc,
  required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
    onTap:press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(svgSrc,
      color: Colors.white54,
         height: 16,
      ),
      title: Text(title,style: TextStyle(color: Colors.white54),),
   );
  }
}
