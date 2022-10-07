// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:kost_app/shared/theme.dart';

class CityCard extends StatelessWidget {
  final int id;
  final String name;
  final String imageUrl;
  final bool isPopular;

  CityCard({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.isPopular = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 120,
        height: 150,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36),
                              )),
                          child: Center(
                            child: Image.asset(
                              'assets/icon_star.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              name,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
