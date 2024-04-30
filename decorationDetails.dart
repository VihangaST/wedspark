import 'package:WedSpark/core/app_export.dart';

import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class decorationdetails extends StatelessWidget {
  decorationdetails({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 31.v),
                  decoration: AppDecoration.fillGray,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            onTap: () {
                              onTapImgArrowleftone(context);
                            }),
                        SizedBox(height: 7.v),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 33.v,
                                width: 224.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              height: 31.v,
                                              width: 224.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.deepOrange900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.h)))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("AMALKA FLORA",
                                              style: CustomTextStyles
                                                  .bodyLargeMeeraInimaiWhiteA700))
                                    ]))),
                        SizedBox(height: 30.v)
                      ])),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 228, 224, 207)),
                  child: Column(children: [
                    Container(
                      height: 120,
                      child: Image(
                          image: AssetImage(
                        'assets/images/dec2.png',
                      )),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 50.h, top: 12.v, right: 42.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Coordinator",
                                        style: CustomTextStyles
                                            .titleMediumGillSansMTBlack900),
                                    SizedBox(height: 9.v),
                                    Text("Email ",
                                        style: CustomTextStyles
                                            .titleMediumGillSansMTBlack900),
                                    SizedBox(height: 15.v),
                                    Text("Location ",
                                        style: CustomTextStyles
                                            .titleMediumGillSansMTBlack900),
                                    SizedBox(height: 19.v),
                                    Text("Packages  ",
                                        style: CustomTextStyles
                                            .titleMediumGillSansMTBlack900)
                                  ]),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 13.h, bottom: 38.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Amal Perera",
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 10.v),
                                        Text("abc@gmail.com",
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 16.v),
                                        Text("Kandy",
                                            style: theme.textTheme.titleMedium)
                                      ]))
                            ])),
                    Container(
                        margin:
                            EdgeInsets.only(left: 38.h, top: 12.v, right: 28.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.h, vertical: 6.v),
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 7.v),
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
                  ]))
            ])),
      ),
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
