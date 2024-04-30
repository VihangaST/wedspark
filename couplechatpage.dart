import 'package:WedSpark/core/app_export.dart';
import 'package:WedSpark/theme/app_decoration.dart';
import 'package:WedSpark/theme/custom_text_style.dart';
import 'package:WedSpark/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class couplechatpage extends StatefulWidget {
  const couplechatpage({super.key});

  @override
  State<couplechatpage> createState() => _couplechatpageState();
}

class _couplechatpageState extends State<couplechatpage> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Column(children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.2,
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
                            child: Text("CHAT",
                                style: CustomTextStyles
                                    .bodyLargeMeeraInimaiWhiteA700))
                      ]))),
            ])),
        Container(
          height: MediaQuery.of(context).size.height * 0.67,
          color: Color.fromARGB(255, 228, 224, 207),
          child: ListView(scrollDirection: Axis.vertical, children: [
            ListTile(
              leading: Icon(Icons.image_rounded),
              title: Text('SALON DIL'),
              subtitle: Text('last message'),
              onTap: () {},
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.image_rounded),
              title: Text('CINNAMAN GRAND HOTEL'),
              subtitle: Text('last message'),
              onTap: () {},
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.image_rounded),
              title: Text('AMALKA FLORAL DECORATORS'),
              subtitle: Text('last message'),
              onTap: () {},
              onLongPress: () {},
            ),
          ]),
        )
      ]),

      // bottomNavigationBar:
      //       CustomBottomBar(onChanged: (BottomBarEnum type) {})
      //bottomNavigationBar: mainpage(),
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
