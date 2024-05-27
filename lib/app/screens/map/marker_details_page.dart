import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:pleasure_mobile_app/app/screens/map/widgets_marker_details/address_text.dart';
import 'package:pleasure_mobile_app/app/screens/map/widgets_marker_details/coupon_button.dart';
import 'package:pleasure_mobile_app/app/screens/map/widgets_marker_details/coupon_info.dart';
import 'package:pleasure_mobile_app/app/screens/map/widgets_marker_details/location_description.dart';
import 'package:pleasure_mobile_app/app/screens/map/widgets_marker_details/location_image.dart';
import 'package:pleasure_mobile_app/app/screens/map/widgets_marker_details/url_page_button.dart';
import 'package:pleasure_mobile_app/app/shared/widgets/base_view.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';
import '../../shared/themes/theme.dart';

class MarkerDetailsPage extends StatelessWidget {
  final String markerId;
  final String image;
  final String description;
  final String address;
  final String couponInfo;
  final String urlPageButton;

  const MarkerDetailsPage(
      {super.key,
      required this.markerId,
      required this.image,
      required this.description,
      required this.address,
      required this.couponInfo,
      required this.urlPageButton});

  @override
  Widget build(BuildContext context) {
    return BaseView(
        body: Column(
      children: [
        Row(
          children: [
            const Padding(padding: EdgeInsets.only(left: 10)),
            LocationImage(path: image),
            const Spacer(),
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 15)),
                SizedBox(
                  //the position of like button
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Row(children: [
                    Spacer(),
                    LikeButton(
                      size: 50,
                      circleColor:
                          CircleColor(start: Colors.white, end: Colors.white),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.black,
                        dotSecondaryColor: secondaryColor,
                        dotThirdColor: buttonColorMenu,
                        dotLastColor: buttonColor,
                      ),
                    ),
                  ]),
                ),
                InnerShadow(
                  blur: 0.5,
                  color: Colors.black,
                  offset: const Offset(1, 2),
                  child: Text(
                    markerId,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: darkerWhiteTextColorLocation,
                      shadows: [
                        Shadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 4,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                AddressText(address: address),
              ],
            ),
            const Padding(padding: EdgeInsets.only(right: 10)),
          ],
        ),
        DescriptionText(description: description),
        const Padding(padding: EdgeInsets.only(top: 20)),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CouponInfo(text: couponInfo),
          const Padding(padding: EdgeInsets.only(left: 15)),
          const CouponButton(),
        ]),
        const Padding(padding: EdgeInsets.only(top: 25)),
        URLPageButton(link: urlPageButton),
      ],
    ));
  }
}
