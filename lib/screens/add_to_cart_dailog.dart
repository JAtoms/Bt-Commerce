import 'package:bt_commerce/models/Product.dart';
import 'package:flutter/material.dart';

import '../components/default_button.dart';
import '../size_config.dart';

class AddToCartDialog extends StatefulWidget {
  const AddToCartDialog({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<AddToCartDialog> createState() => _AddToCartDialogState();
}

class _AddToCartDialogState extends State<AddToCartDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 170, horizontal: 50),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10),
            SizedBox(
              width: getProportionateScreenWidth(238),
              child: AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: widget.product.id.toString(),
                  child: Image.asset(widget.product.images[0]),
                ),
              ),
            ),
            const Text('Item added to your cart', textAlign: TextAlign.center),
            const SizedBox(height: 30),
            DefaultButton(
              text: 'Ok',
              onPress: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
