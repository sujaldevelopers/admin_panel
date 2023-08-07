import 'package:admin_panel/screen_main/dashbord/componet/storage_info.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        //height: 500,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              "Storage Details",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Chart(),
            StrageInfoCard(
              title: 'Document Files',
              svgSrc: 'assets/icons/Documents.svg',
              amount0fFiles: '1.3GB',
              num0fFiles: 1328,
            ),
            StrageInfoCard(
              title: 'Media Files',
              svgSrc: 'assets/icons/media.svg',
              amount0fFiles: '15.3GB',
              num0fFiles: 1328,
            ),
            StrageInfoCard(
              title: 'Other Files',
              svgSrc: 'assets/icons/folder.svg',
              amount0fFiles: '1.3GB',
              num0fFiles: 1328,
            ),
            StrageInfoCard(
              title: 'Unknown Files',
              svgSrc: 'assets/icons/unknown.svg',
              amount0fFiles: '1.3GB',
              num0fFiles: 140,
            ),
          ],
        ),
      ),
    );
  }
}
