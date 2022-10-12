// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kost_app/shared/theme.dart';
import 'package:kost_app/widget/bottom_navbar_item.dart';
import 'package:kost_app/widget/city_card.dart';
import 'package:kost_app/widget/space_card.dart';
import 'package:kost_app/widget/tips_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE l TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // NOTE : POPULAR CITY
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popolar Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    id: 1,
                    name: 'Jakarta',
                    imageUrl: 'assets/city1.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    id: 2,
                    name: 'Bandung',
                    imageUrl: 'assets/city2.png',
                    isPopular: true,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    id: 3,
                    name: 'Surabaya',
                    imageUrl: 'assets/city3.png',
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // NOTE : RECOMENDED SPACES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  SpaceCard(
                    id: 1,
                    name: 'Kuretakeso Hott',
                    imageUrl: 'assets/space1.png',
                    price: 52,
                    city: 'Bandung',
                    country: 'Germany',
                    rating: 4,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    id: 2,
                    name: 'Roemah Nenek',
                    imageUrl: 'assets/space2.png',
                    price: 11,
                    city: 'Seattle',
                    country: 'Bogor',
                    rating: 5,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    id: 1,
                    name: 'Darrling How',
                    imageUrl: 'assets/space3.png',
                    price: 20,
                    city: 'Jakarta',
                    country: 'Indonesia',
                    rating: 3,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // NOTE : TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TipsCard(
                    id: 1,
                    title: 'City Guidelines',
                    imageUrl: 'assets/tips1.png',
                    updatedAt: '20 Apr',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    id: 2,
                    title: 'Jakarta Firship',
                    imageUrl: 'assets/tips2.png',
                    updatedAt: '11 Dec',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50 + 35,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
