import 'package:WedSpark/core/app_export.dart';
import 'package:WedSpark/theme/app_decoration.dart';
import 'package:WedSpark/theme/custom_text_style.dart';
import 'package:WedSpark/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class SlashScreen20CoupleHotelCinnamonScreen extends StatefulWidget {
  const SlashScreen20CoupleHotelCinnamonScreen({super.key});

  @override
  State<SlashScreen20CoupleHotelCinnamonScreen> createState() =>
      _SlashScreen20CoupleHotelCinnamonScreenState();
}

class _SlashScreen20CoupleHotelCinnamonScreenState
    extends State<SlashScreen20CoupleHotelCinnamonScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Column(children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 31.v),
            decoration: AppDecoration.fillGray,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  svgPath: ImageConstant.imgArrowleft,
                  width: MediaQuery.of(context).size.width * 0.05,
                  height: MediaQuery.of(context).size.height * 0.05,
                  onTap: () {
                    onTapImgArrowleftone(context);
                  }),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: appTheme.deepOrange900,
                                    borderRadius: BorderRadius.circular(8.h)))),
                        Align(
                            alignment: Alignment.center,
                            child: Text("CINNAMAN GRAND HOTEL",
                                style: CustomTextStyles
                                    .bodyLargeMeeraInimaiWhiteA700))
                      ]))),
            ])),
        Container(
          height: MediaQuery.of(context).size.height * 0.67,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v),
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 228, 224, 207)),
                child: Column(children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Image(
                        image: AssetImage(
                      'assets/images/hotels.png',
                    )),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Name",
                                      style: CustomTextStyles
                                          .titleMediumGillSansMTBlack900),
                                  //SizedBox(height: 9.v),
                                  Text("Email ",
                                      style: CustomTextStyles
                                          .titleMediumGillSansMTBlack900),
                                  //SizedBox(height: 15.v),
                                  Text("Location ",
                                      style: CustomTextStyles
                                          .titleMediumGillSansMTBlack900),
                                  //SizedBox(height: 19.v),
                                  Text("Packages  ",
                                      style: CustomTextStyles
                                          .titleMediumGillSansMTBlack900)
                                ]),
                          ),
                          Padding(
                              padding:
                                  EdgeInsets.only(left: 13.h, bottom: 38.v),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Amal drftgyhujk fgh",
                                          style: theme.textTheme.titleMedium),
                                      //SizedBox(height: 10.v),
                                      Text("a@gmail.com",
                                          style: theme.textTheme.titleMedium),
                                      //SizedBox(height: 16.v),
                                      Text("Kandy",
                                          style: theme.textTheme.titleMedium)
                                    ]),
                              ))
                        ]),
                  ),
                  Container(
                      margin:
                          EdgeInsets.only(left: 38.h, top: 12.v, right: 28.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Text("Basic ",
                                    style: theme.textTheme.bodyLarge)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Text("1200000 LKR",
                                    style: theme.textTheme.bodyLarge))
                          ])),
                  Container(
                      margin:
                          EdgeInsets.only(left: 38.h, top: 10.v, right: 28.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.h, vertical: 7.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("Standard ",
                                    style: theme.textTheme.bodyLarge)),
                            Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("1500000 LKR",
                                    style: theme.textTheme.bodyLarge))
                          ])),
                  Container(
                      margin: EdgeInsets.fromLTRB(38.h, 12.v, 28.h, 89.v),
                      padding: EdgeInsets.all(8.h),
                      decoration: AppDecoration.fillWhiteA,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("Premium ",
                                    style: theme.textTheme.bodyLarge)),
                            Text("1800000 LKR ",
                                style: theme.textTheme.bodyLarge)
                          ]))
                ])),
          ),
        )
      ]),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
