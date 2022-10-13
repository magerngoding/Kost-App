// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kost_app/pages/erorr_page.dart';
import 'package:kost_app/pages/home_page.dart';
import 'package:kost_app/shared/theme.dart';
import 'package:kost_app/widget/facility_item.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse(
    'https://www.google.com/search?tbm=lcl&sxsrf=ALiCzsb7c80ulCBxqEAF23zyJJhL2xBBLg:1665547663887&q=PLTA+Kracak&rflfq=1&num=20&stick=H4sIAAAAAAAAABWQO04cYRCEtYEtJIdDNBLSHqEf1a_QMQSW4AIj5GC1aJGAhOuQkXEH38anoCb4gy51_fVVX_1cF1S1JcKitODS4-u1ekp69QxnHZhmros7prurxUpyHN7rMtOKypqw3azpQ3-5tVWo6IiMcAr6Q6KjUkzQrlk1zI8eqg2fKUcjhJ_a7KJldM64CmpdFGZB-0iIZYoWxS5mE0YmDSq1i9eKDKnuIVhIuweaqpbCI2DhYDtisRTQ2ki4tqRqJ3b-JvBMCsZgxCry8wOiT1ZU8FBe5sYCafRJzX4ylTG-dWFuyBRXAc1AqdC_38dyIglGAgz2rqXcJVT4hHiM7VEJVSVqEh8Gr-ivw-H_4eZ-u_z7PL6dnl-3y_Fte_r7cry8P53Or6fz6fLx49efu4ffx9uX7XE7fwO0YvAx3wEAAA&ved=2ahUKEwiJ6vLG6Nn6AhXUQ3wKHRpEDMAQjHJ6BAhOEA0&rldimm=17328275101900903285');

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErorrPage(),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/cover.png',
              // Selebar layar hp
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),

                      // NOTE : TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$52',
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' / month',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                  color: Color(0xff989BA1),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      // NOTE : MAIN FACILITIES
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              imageUrl: 'assets/icon_kitchen.png',
                              name: 'Kitchen',
                              total: 2,
                            ),
                            FacilityItem(
                              imageUrl: 'assets/icon_bedroom.png',
                              name: 'Bedroom',
                              total: 3,
                            ),
                            FacilityItem(
                              imageUrl: 'assets/icon_cupboard.png',
                              name: 'Big Lemari',
                              total: 3,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      // NOTE : PHOTOS
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: edge,
                            ),
                            Image.asset(
                              'assets/photo1.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/photo2.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/photo3.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      // NOTE : LOCATION
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jln. Kappan Sukses No. 20\nPalembang',
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: () {
                                _launchUrl();
                              },
                              child: Image.asset(
                                'assets/btn_map.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
