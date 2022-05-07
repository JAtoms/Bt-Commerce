import 'package:bt_commerce/constants/colors.dart';
import 'package:bt_commerce/constants/size_config.dart';
import 'package:bt_commerce/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopNavigationWidget extends StatelessWidget {
  const TopNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.heightAdjusted(10),
          left: SizeConfig.widthAdjusted(3),
          right: SizeConfig.widthAdjusted(3)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            ClipRRect(
                borderRadius:
                    BorderRadius.circular(SizeConfig.widthAdjusted(1)),
                child: Image.asset(
                  'assets/images/person.png',
                  height: 45,
                  fit: BoxFit.cover,
                )),
            SizedBox(width: SizeConfig.widthAdjusted(1)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello',
                    style: GlobalTextStyles.regularText(
                        color: GlobalColors.globalAsh)),
                Text('Valentiano',
                    style: GlobalTextStyles.mediumText(
                        color: GlobalColors.globalAsh)),
              ],
            )
          ]),
          SvgPicture.asset('assets/images/notif_icon.svg')
        ],
      ),
    );
  }
}