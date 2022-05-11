import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          const HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(10)),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const DiscountBanner(),
                  const SpecialOffers(),
                  SizedBox(height: getProportionateScreenWidth(30)),
                  const PopularProducts(),
                  SizedBox(height: getProportionateScreenWidth(30)),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
