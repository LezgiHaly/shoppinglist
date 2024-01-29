import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/ui/res/styles.dart';

/// Карточка итогов

class SummuryProductCard extends StatelessWidget {
  const SummuryProductCard({
    super.key,
    required this.productQuantity,
    required this.totalPrice,
    required this.salePrice,
    required this.salePercentage,
    required this.totalPriceWithSale,
  });

  final int productQuantity;
  final String totalPrice;
  final String salePrice;
  final String salePercentage;
  final String totalPriceWithSale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child:
              Text(inPurchase, style: text16Blod.copyWith(color: darkBluColor)),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$productQuantity тов.',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: darkBluColor,
              ),
            ),
            Text(
              '$totalPrice руб.',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: darkBluColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$discount $salePercentage',
              style: text12.copyWith(color: darkBluColor),
            ),
            Text(
              '-$salePrice',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: darkBluColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              total,
              style: text16Blod.copyWith(color: darkBluColor),
            ),
            Text(
              totalPriceWithSale,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: darkBluColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
