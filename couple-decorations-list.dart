import 'package:WedSpark/presentation/couple-decoration-details/decorationDetails.dart';

import 'package:flutter/material.dart';
import 'package:WedSpark/core/app_export.dart';
//import 'package:app1/widgets/app_bar/appbar_image.dart';
//import 'package:app1/widgets/app_bar/appbar_subtitle.dart';
import 'package:WedSpark/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:WedSpark/widgets/app_bar/custom_app_bar.dart';
//import 'package:app1/widgets/custom_search_view.dart';

import '../../widgets/app_bar/appbar_title.dart';
//import '../slash_screen_six_screen/slash_screen_six_screen.dart';

// ignore_for_file: must_be_immutable
class decorations extends StatelessWidget {
  String decoration = "";
  decorations(String decoration1) : decoration = decoration1;

  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 228, 224, 207)),
              child: CustomAppBar(
                title: Stack(alignment: Alignment.center, children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 28.0),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowleft,
                                      height: 21.adaptSize,
                                      width: 21.adaptSize,
                                      onTap: () {
                                        onTapImgArrowleftone(context);
                                      }),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            AppbarSubtitle1(
                                                text:
                                                    "Find Your Wedding Hotel here..",
                                                margin:
                                                    EdgeInsets.only(top: 50.v)),
                                            AppbarTitle(
                                                text: "DECORATIONS",
                                                margin: EdgeInsets.only(
                                                    left: 40.h,
                                                    right: 40.h,
                                                    bottom: 18.v,
                                                    top: 12.v))
                                          ]),
                                    ),
                                    SizedBox(height: 7.v),
                                    // Text("Plan your wedding here..",
                                    //     style: CustomTextStyles
                                    //         .bodyMediumGillSansMT),
                                    SizedBox(height: 25.v),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ])
                ]),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            TextField(
              autofocus: true, //maximum text length
              keyboardType: TextInputType.name, //can only type numbers
              style: TextStyle(fontSize: 20),

              controller: searchController1,
              onSubmitted: (text) {
                decoration = searchController1.text;

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) {
                    return decorations(decoration);
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
            Container(
              color: Color.fromARGB(
                255,
                228,
                224,
                207,
              ),
              height: 550,
              child: ListView(
                scrollDirection: Axis.vertical,
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
                            'assets/images/dec2.png',
                          )),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return decorationdetails();
                              }));
                            },
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(88),
                                  color: Color(0xFFB84927),
                                ),
                                child: Text("AMALKA FLORA",
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
                    //width: 200,
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
                                return decorations(decoration);
                              }));
                            },
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(88),
                                  color: Color(0xFFB84927),
                                ),
                                child: Text("ARALIYA FLORA",
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
          ],
        ),
      ),
    );
  }

  /// Navigates to the slashScreenSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the slashScreenSixScreen.
  onTapVenue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.slashScreenSixScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
