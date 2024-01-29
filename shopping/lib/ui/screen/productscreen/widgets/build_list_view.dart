import 'package:flutter/material.dart';

import '../../../../domain/sort_type.dart';
import '../../../../moks/moks.dart';
import 'product_list.dart';
import 'products_card.dart';
import 'total_cost_products.dart';

/// Список продуктов

class BuildListView extends StatelessWidget {
  const BuildListView({super.key, required this.sortType});

  final SortType sortType;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList.length + 1,
      itemBuilder: (context, index) {
        if (index == productList.length) {
          return const Column(
            children: [
              Divider(),
              TotalCostProducts(),
            ],
          );
        } else {
          final item = productSort(sortType)[index];
          return Column(
            children: [
              ProductsCard(
                productEntity: item,
                itemOfCategory: (index == 0 ||
                        item.category !=
                            productSort(sortType)[index - 1].category) &&
                    (sortType == SortType.fromAZType ||
                        sortType == SortType.fromAZType),
              ),
            ],
          );
        }
      },
    );
  }
}