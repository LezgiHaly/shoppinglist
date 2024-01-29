import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/moks/moks.dart';
import 'package:surf_flutter_courses_template/ui/res/styles.dart';
import 'package:surf_flutter_courses_template/ui/screen/productscreen/widgets/product_list.dart';
import 'package:surf_flutter_courses_template/ui/screen/productscreen/widgets/sort_model_card.dart';
import 'package:surf_flutter_courses_template/ui/screen/productscreen/widgets/sort_button.dart';
import '../../../domain/sort_type.dart';
import 'widgets/my_bar.dart';


///Основной экран


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  SortType _sortType = SortType.unsorted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: (productList.isEmpty == true)
              ? Center(
                  child: Text(
                    empty,
                    style: text20Bold.copyWith(color: darkBluColor),
                  ),
                )
              : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          shoppingList,
                          style: text18Bold.copyWith(color: darkBluColor),
                        ),
                        SortButtonWidget(
                          sortType: _sortType,
                          onTap: () async {
                            final selectedType = await _showModalBottomSheet(
                              _sortType,
                            );
                            if (selectedType != null &&
                                _sortType != selectedType) {
                              setState(() {
                                _sortType = selectedType;
                              });
                            }
                          },
                        )
                      ],
                    ),
                    Expanded(
                      flex: 2,
                      child: ProductList(
                        products: productList,
                        sortType: _sortType,
                      ),
                    ),
                  ],
                ),
        ));
  }

  Future<SortType?> _showModalBottomSheet(SortType sortType) {
    return showModalBottomSheet<SortType>(
      scrollControlDisabledMaxHeightRatio: 0.90,
      context: context,
      builder: (BuildContext context) {
        return SortModelCard(
          sortType: sortType,
        );
      },
    );
  }
}
