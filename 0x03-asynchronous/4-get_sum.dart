import 'dart:convert';

import '4-util.dart';

Future<double> calculateTotal() async {
  final String userData = await fetchUserData();
  final String id = jsonDecode(userData)['id'];

  final String orderData = await fetchUserOrders(id);
  final List orders = jsonDecode(orderData);

  final orderPrices = await Future.wait(orders
      .map((order) async => double.parse(await fetchProductPrice(order))));

  final double price =
      orderPrices.reduce((sum, orderPrice) => sum + orderPrice);
  return price;
}

main() async {
  print(await calculateTotal());
}
