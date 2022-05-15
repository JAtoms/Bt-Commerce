import 'Product.dart';

class Cart {
  Product product;
  int numOfItem;
  String discount;
  double totalPrice;

  Cart(this.product, this.numOfItem, this.discount, this.totalPrice);

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
      demoCarts.add(Cart(product, numOfItem, discount, totalPrice));
      return true;
    } catch (e, s) {
      return false;
    }
  }

  static bool removeItemFromCart({required int index}) {
    try {
      demoCarts.removeAt(index);
      return true;
    } catch (e, s) {
      return false;
    }
  }
}
