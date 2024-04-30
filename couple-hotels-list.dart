import 'package:WedSpark/presentation/couple_bottom_nav_bar_main_page.dart';
import 'package:flutter/material.dart';
import 'package:WedSpark/core/app_export.dart';

import 'package:WedSpark/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:WedSpark/widgets/app_bar/custom_app_bar.dart';

import '../../widgets/app_bar/appbar_title.dart';

// ignore_for_file: must_be_immutable
class hotels extends StatelessWidget {
  String hotel = "";
  hotels(String hotel1) : hotel = hotel1;

  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 228, 224, 207)),
            child: CustomAppBar(
              title: Stack(alignment: Alignment.center, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: 21.adaptSize,
                              width: 21.adaptSize,
                              onTap: () {
                                onTapImgArrowleftone(context);
                              }),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Column(
                              children: [
                                Container(
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        AppbarSubtitle1(
                                            text:
                                                "Find Your Wedding Hotel here..",
                                            margin: EdgeInsets.only(top: 50.v)),
                                        AppbarTitle(
                                            text: "HOTELS",
                                            margin: EdgeInsets.only(
                                                left: 40.h,
                                                right: 40.h,
                                                bottom: 18.v,
                                                top: 15.v))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ])
              ]),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: TextField(
              autofocus: true, //maximum text length
              keyboardType: TextInputType.name, //can only type numbers
              style: TextStyle(fontSize: 20),

              controller: searchController1,
              onSubmitted: (text) {
                hotel = searchController1.text;

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) {
                    return hotels(hotel);
                  },
                ));
              },
              decoration: InputDecoration(
                filled: true,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    searchController1.text = '';
                  },
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.74,
            color: Color.fromARGB(
              255,
              228,
              224,
              207,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    //width: 200,
                    margin: EdgeInsets.only(bottom: 8),
                    color: Color.fromARGB(255, 60, 96, 32),
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage(
                            'assets/images/hotels.png',
                          )),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return mainpage();
                              }));
                            },
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(88),
                                  color: Color(0xFFB84927),
                                ),
                                child: Text("GALLEFACE HOTEL",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    color: Color.fromARGB(255, 60, 96, 32),
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage(
                            'assets/images/dec2.png',
                          )),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return mainpage();
                              }));
                            },
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(88),
                                  color: Color(0xFFB84927),
                                ),
                                child: Text("CINNAMON GRAND HOTEL",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    color: Color.fromARGB(255, 60, 96, 32),
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage(
                            'assets/images/bridaldressing1.png',
                          )),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return mainpage();
                              }));
                            },
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(88),
                                  color: Color(0xFFB84927),
                                ),
                                child: Text("CINNAMON GRAND HOTEL",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the slashScreenSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the slashScreenSixScreen.
  // onTapVenue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.slashScreenSixScreen);
  // }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
