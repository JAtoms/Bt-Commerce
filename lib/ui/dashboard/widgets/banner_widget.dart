import 'package:bt_commerce/constants/colors.dart';
import 'package:bt_commerce/constants/size_config.dart';
import 'package:bt_commerce/constants/text_styles.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.only(
          left: SizeConfig.widthAdjusted(3),
          right: SizeConfig.widthAdjusted(3)),
      margin: EdgeInsets.only(top: SizeConfig.heightAdjusted(4)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.heightAdjusted(3))),
      child: Stack(
        children: [
          Positioned.fill(
              child: Image.asset('assets/images/image.png', fit: BoxFit.cover)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Black Friday',
                        style: GlobalTextStyles.mediumText(
                          fontSize: 3,
                            color: GlobalColors.globalBlack)),
                    Text('Buy 5 for price of 4',
                        style: GlobalTextStyles.regularText(
                          fontSize: 1.5,
                            color: GlobalColors.globalAsh)),
                    Text('20% discount',
                        style: GlobalTextStyles.regularText(
                          fontSize: 1.5,
                            color: GlobalColors.globalRed)),
                  ],
                ),
              ),
              Image.asset('assets/images/tissue4.png')
            ],
          ),
        ],
      ),
    );
  }
}
