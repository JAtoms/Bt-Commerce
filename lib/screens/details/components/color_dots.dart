import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';
import 'body.dart';

class ColorDots extends ConsumerWidget {
  ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  var discountPrice = 0.0;

  late double price;

  void priceCalc(BuildContext context, count) {

    if (count % product.discountQuantity == 0) {
      discountPrice = (count / product.discountQuantity);

      price = (product.price * count) - discountPrice;
      context.read(totalPrice).state = price;
      context.read(discount).state = discountPrice.toString();
    } else {
      price = product.price * count;
      context.read(discount).state = '0';
      context.read(totalPrice).state = price;
    }
  }

  @override
  Widget build(BuildContext context, watch) {
    var itemDiscount = watch(discount).state;
    var itemTotalPrice = watch(totalPrice).state == 0
        ? product.price * 1
        : watch(totalPrice).state;
    var itemQty = watch(quantity).state;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('£${itemTotalPrice.toString()}',
                  style: Theme.of(context).textTheme.headline6),
              SizedBox(width: getProportionateScreenWidth(10)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Discount: ', maxLines: 3),
                  Text('£${itemDiscount.toString()}', maxLines: 3),
                ],
              )
            ],
          ),
          Row(
            children: [
              RoundedIconBtn(
                icon: Icons.remove,
                onPress: () {
                  if (itemQty != 1) {
                    priceCalc(context, itemQty - 1);
                    context.read(quantity).state = itemQty - 1;
                  }
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
              Text(itemQty.toString()),
              SizedBox(width: getProportionateScreenWidth(20)),
              RoundedIconBtn(
                icon: Icons.add,
                showShadow: true,
                onPress: () {
                  priceCalc(context,itemQty + 1);
                  context.read(quantity).state = itemQty + 1;
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
