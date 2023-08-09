import 'package:flutter/material.dart';
import 'package:jobolo/core/app_export.dart';
import 'package:jobolo/widgets/app_bar/custom_app_bar.dart';
import 'package:jobolo/widgets/custom_elevated_button.dart';
import 'package:jobolo/widgets/custom_text_form_field.dart';

class DirectStoreOrBrowseScreen extends StatelessWidget {
  DirectStoreOrBrowseScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController exampleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            61,
          ),
          title: Padding(
            padding: getPadding(
              left: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: getSize(
                        43,
                      ),
                      width: getSize(
                        43,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            21,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 4,
                        bottom: 2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                right: 24,
                              ),
                              child: Text(
                                "Good Evening",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "Mr Abc def fgh",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodyMedium15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    top: 52,
                  ),
                  child: Text(
                    "Have a specific  shop / store code?",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleMediumMedium,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child: Text(
                    "Enter code to directly open shop/store",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                CustomTextFormField(
                  controller: exampleController,
                  margin: getMargin(
                    left: 18,
                    top: 14,
                    right: 19,
                  ),
                  contentPadding: getPadding(
                    left: 17,
                    top: 18,
                    right: 17,
                    bottom: 18,
                  ),
                  textStyle: CustomTextStyles.bodyMediumGray500,
                  hintText: "e.g sh26333",
                  hintStyle: CustomTextStyles.bodyMediumGray500,
                  filled: true,
                  fillColor: appTheme.gray10001,
                  defaultBorderDecoration: TextFormFieldStyleHelper.fillGray10001,
                  enabledBorderDecoration: TextFormFieldStyleHelper.fillGray10001,
                  focusedBorderDecoration: TextFormFieldStyleHelper.fillGray10001,
                  disabledBorderDecoration:
                      TextFormFieldStyleHelper.fillGray10001,
                ),
                CustomElevatedButton(
                  text: "Next",
                  margin: getMargin(
                    top: 21,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(Size(
                    getHorizontalSize(
                      166,
                    ),
                    getVerticalSize(
                      56,
                    ),
                  ))),
                  buttonTextStyle: CustomTextStyles.titleSmallMedium,
                ),
                Padding(
                  padding: getPadding(
                    top: 35,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 9,
                          bottom: 9,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            146,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: appTheme.gray30001,
                          ),
                        ),
                      ),
                      Text(
                        "OR ",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleMediumGray400.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.09,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                          bottom: 9,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            149,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: appTheme.gray30001,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  text: "Browse Shops",
                  margin: getMargin(
                    top: 25,
                  ),
                  buttonStyle: CustomButtonStyles.fillGray100.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(Size(
                    getHorizontalSize(
                      166,
                    ),
                    getVerticalSize(
                      56,
                    ),
                  ))),
                  buttonTextStyle: CustomTextStyles.titleSmallBlack900,
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgFrameOnprimarycontainer,
                  height: getVerticalSize(
                    260,
                  ),
                  width: getHorizontalSize(
                    277,
                  ),
                  margin: getMargin(
                    top: 65,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
