// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kost_app/shared/theme.dart';

class TipsCard extends StatelessWidget {
  final int id;
  final String title;
  final String imageUrl;
  final String updatedAt;

  TipsCard({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.updatedAt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${updatedAt}',
              style: greyTextStyle,
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        )
      ],
    );
  }
}
