import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Cart.dart';
import '../../../size_config.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cart.product.title,
                style: const TextStyle(color: Colors.black, fontSize: 16),
                maxLines: 2),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: '£${cart.product.price}',
                style: const TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
                children: [
                  TextSpan(
                      text: ' x${cart.numOfItem}',
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
            const SizedBox(height: 1),
            Text.rich(
              TextSpan(
                text: 'Total: ${cart.totalPrice}',
                style: const TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
                children: [
                  TextSpan(
                      text: '     Discount £${cart.discount}',
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
