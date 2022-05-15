// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bt_commerce/models/Cart.dart';
import 'package:bt_commerce/models/Product.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCart extends Mock implements Cart {}

void main() {
  late MockCart sut;
  late List<Cart> cart;
  late List<Product> toiletRollDb;
  late List<Product> faceMaskDb;

  setUp(() {
    cart = Cart.demoCarts;
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
      expect(0, cart.length);
    });
  });

  test('Cart is empty', () {
    expect(0, cart.length);
  });

  test('Item added to cart', () {
    when(

    ).thenAnswer((invocation) => null);


  });
