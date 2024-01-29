import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/domain/convertor.dart';
import 'package:surf_flutter_courses_template/domain/productmodel.dart';
import 'package:surf_flutter_courses_template/ui/res/styles.dart';

/// Карточка продукта

class ProductsCard extends StatelessWidget {
  ProductsCard({
    required this.productEntity,
    super.key,
    required this.itemOfCategory,
  });

  final ProductEntity productEntity;
  final bool itemOfCategory;

  final _mapper = Convertor();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          children: [
            if (itemOfCategory) ...[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(' ${productEntity.category.name}'),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
            Row(
              children: [
                SizedBox(
                  height: 68,
                  width: 68,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      productEntity.imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const SizedBox(
                          height: 68,
                          width: 68,
                          child: Center(child: Icon(Icons.error)),
                        );
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productEntity.title),
                      Row(
                        children: [
                          Text(
                            _mapper.amountAsString(
                              productEntity,
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Text(
                            _mapper.totalPriceAsString(productEntity.price),
                            style: (_mapper.salePrice(productEntity) > 0)
                                ? const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: textColorGrey,
                                  )
                                : const TextStyle(color: Colors.white),
                          ),
                          const Spacer(),
                          Text(
                              _mapper.totalPriceWithSaleAsString(productEntity),
                              style: (_mapper.salePrice(productEntity) != 0)
                                  ? const TextStyle(color: textColorRed)
                                  : const TextStyle(color: darkBluColor)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }
}
