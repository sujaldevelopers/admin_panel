import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/RecentFile.dart';
import '../../constants.dart';

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              "${fileInfo.icon}",
              //"${fileInfo.icon}",
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text("${fileInfo.title}"),
            ),
          ],
        ),
      ),
      DataCell(
        Text("${fileInfo.date}"),
      ),
      DataCell(
        Text("${fileInfo.size}"),
      ),
    ],
  );
}

class RecentsFile extends StatelessWidget {
  const RecentsFile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recent Files", style: Theme.of(context).textTheme.titleMedium),
            SizedBox(
              width: double.infinity,
              child: DataTable(
                columnSpacing: defaultPadding,
                horizontalMargin: 0,
                columns: [
                  DataColumn(
                    label: Text("File Name"),
                  ),
                  DataColumn(
                    label: Text("Date"),
                  ),
                  DataColumn(
                    label: Text("Size"),
                  ),
                ],
                rows: List.generate(
                  demoRecentFiles.length,
                  (index) => recentFileDataRow(
                    demoRecentFiles[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
