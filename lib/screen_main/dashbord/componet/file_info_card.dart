import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/MyFiles.dart';
import '../../constants.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({super.key, required this.info});

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color?.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset("${info.svgSrc}", color: info.color),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white54,
              )
            ],
          ),
          Text(
            "${info.title}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          progressLine(
            percentage: info.percentage,
            color: info.color,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.numOfFiles}Files",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white70),
              ),

              Text(
                "${info.totalStorage}",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class progressLine extends StatelessWidget {
  const progressLine({
    super.key,
    this.color = primaryColor,
    required this.percentage,
  });

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}