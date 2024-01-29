import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/domain/productmodel.dart';
import 'package:surf_flutter_courses_template/domain/sort.dart';
import 'package:surf_flutter_courses_template/domain/sort_type.dart';
import 'package:surf_flutter_courses_template/moks/moks.dart';
import 'build_list_view.dart';

/// Вывод списка продуктов


class ProductList extends StatelessWidget {
  const ProductList(
      {super.key, required this.products, required this.sortType});

  final List<ProductEntity> products;
  final SortType sortType;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future<List<ProductEntity>>.delayed(
        const Duration(seconds: 2),
        () => products,
      ),
      builder:
          (BuildContext context, AsyncSnapshot<List<ProductEntity>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return BuildListView(sortType: sortType);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

List<ProductEntity> productSort(SortType? sortType) {
  switch (sortType) {
    case SortType.unsorted:
      return unsorted(productList);
    case SortType.fromAZTitle:
      return fromAZTitle(productList);
    case SortType.fromZATitle:
      return fromZATitle(productList);
    case SortType.ascendingPrice:
      return ascendingPrice(productList);
    case SortType.descendingPrice:
      return descendingPrice(productList);
    case SortType.fromAZType:
      return typeAZ(productList);
    case SortType.fromZAType:
      return typeZA(productList);
    default:
      return productList;
  }
}
