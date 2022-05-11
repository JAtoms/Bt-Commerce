import 'package:bt_commerce/models/Cart.dart';
import 'package:bt_commerce/screens/add_to_cart_dailog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../components/default_button.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

var discount = StateProvider.autoDispose((ref) => '0');
var totalPrice = StateProvider.autoDispose((ref) => 0.0);
var quantity = StateProvider.autoDispose((ref) => 1);

class Body extends ConsumerWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    var itemDiscount = watch(discount).state;
    var itemTotalPrice = watch(totalPrice).state;
    var itemQty = watch(quantity).state;
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(100),
                          top: getProportionateScreenWidth(30),
                        ),
                        child: DefaultButton(
                          text: 'Add To Cart',
                          onPress: () {
                            demoCarts.add(Cart(
                                product: product,
                                numOfItem: itemQty,
                                totalPrice: itemTotalPrice == 0
                                    ? product.price
                                    : itemTotalPrice,
                                discount: itemDiscount));
                            showDialog(
                                context: context,
                                builder: (context) =>
                                    AddToCartDialog(product: product));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
