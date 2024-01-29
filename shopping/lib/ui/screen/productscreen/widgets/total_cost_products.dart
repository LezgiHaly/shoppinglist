import 'package:flutter/material.dart';
import '../../../../moks/moks.dart';
import 'summury_product_card.dart';

/// Расчет итогов

class TotalCostProducts extends StatelessWidget {
  const TotalCostProducts({super.key});
  @override
  Widget build(BuildContext context) {
    double totalPrice = productList.fold(
        0, (previousValue, element) => previousValue + element.price / 100);

    double priceSale = productList.fold(
        0, (previousValue, element) => previousValue + element.sale / 100);

    double priseWithSale = totalPrice - priceSale;

    double discountPercentage = (priceSale / totalPrice) * 100;

    String totalPriceString = totalPrice.toStringAsFixed(0);

    String priceSaleString = '${priceSale.toStringAsFixed(0)}  руб';

    String priseWithSaleString = '${priseWithSale.toStringAsFixed(0)}  руб';

    String discountPercentageString =
        '${discountPercentage.toStringAsFixed(1)}%';

    return SummuryProductCard(
      productQuantity: productList.length,
      totalPrice: totalPriceString,
      salePrice: priceSaleString,
      salePercentage: discountPercentageString,
      totalPriceWithSale: priseWithSaleString,
    );
  }
}
