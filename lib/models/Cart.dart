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

  static List<Cart> demoCarts = [];

  static String sumOfAllPrice() {
    var price = 0.0;
    for (var item in demoCarts) {
      price += item.totalPrice;
    }
    return price.toString();
  }

  static bool addItemToCart(
      {required Product product,
      required int numOfItem,
      required String discount,
      required double totalPrice}) {
    try {
      demoCarts.add(Cart(
          product: product,
          numOfItem: numOfItem,
          discount: discount,
          totalPrice: totalPrice));
      return true;
    } catch (e, s) {
      return false;
    }
  }
}
