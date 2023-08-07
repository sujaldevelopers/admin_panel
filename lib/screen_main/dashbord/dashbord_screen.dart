import 'package:admin_panel/models/RecentFile.dart';
import 'package:admin_panel/screen_main/constants.dart';
import 'package:admin_panel/screen_main/dashbord/componet/my_files.dart';
import 'package:admin_panel/screen_main/dashbord/componet/recent_file.dart';
import 'package:admin_panel/screen_main/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'componet/chart.dart';
import 'componet/header.dart';
import 'componet/storage detail.dart';
import 'componet/storage_info.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyFiels(),
                      SizedBox(height: defaultPadding),
                      RecentsFile(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context))  StorageDetails(),
                    ],
                  ),
                ),
                if (Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<PieChartSectionData> paiChartelectionDatas = [
  PieChartSectionData(
    color: primaryColor,
    value: 25,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 20,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: Color(0xFFFFCF26),
    value: 10,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    color: Color(0xFFEE2727),
    value: 15,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 25,
    showTitle: false,
    radius: 13,
  ),
];
