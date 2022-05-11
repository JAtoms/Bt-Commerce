import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItem;
  final String discount;
  final double totalPrice;

  Cart(
      {required this.product,
      required this.numOfItem,
      required this.discount,
      required this.totalPrice});
}

List<Cart> demoCarts = [];

String totalPrice(){
  var price = 0.0;
  for(var item in demoCarts){
    price += item.totalPrice;
  }
  return price.toString();
}
