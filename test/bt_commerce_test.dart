import 'package:bt_commerce/models/Cart.dart';
import 'package:bt_commerce/models/Product.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late List<Product> toiletRollDb;
  late List<Product> faceMaskDb;

  setUp(() {
    toiletRollDb = toiletRoll;
    faceMaskDb = faceMasks;
  });

  group('Check if products are not empty', () {
    test('Toilet roll DB is not empty', () {
      expect(true, toiletRollDb.isNotEmpty);
    });

    test('Face Mask DB is not empty', () {
      expect(true, faceMaskDb.isNotEmpty);
    });

    test('Cart is empty', () {
      expect(true, Cart.demoCarts.isEmpty);
    });
  });

  group('Cart actions', () {
    test('Add item to cart', () {
      expect(
          Cart.addItemToCart(
              product: toiletRollDb[0],
              numOfItem: 1,
              discount: '0',
              totalPrice: toiletRollDb[0].price),
          true);
    });
    test('Remove item from cart', () {
      expect(Cart.removeItemFromCart(index: 0), true);
    });

  });
}
