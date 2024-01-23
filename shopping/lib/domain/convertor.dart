import 'package:surf_flutter_courses_template/domain/productmodel.dart';
import 'package:surf_flutter_courses_template/domain/quantityproduct.dart';



class Convertor {
  double price(ProductEntity productEntity) {
    return productEntity.price / 100;
  }

  double priceWithSale(ProductEntity productEntity) {
    return price(productEntity) - (productEntity.sale / 100);
  }

  double salePrice(ProductEntity productEntity) {
    return productEntity.sale / 100;
  }

  String amountAsString(ProductEntity productEntity) {
    if (productEntity.amount is Grams) {
      return productEntity.amount.value >= 1000
          ? '${productEntity.amount.value / 1000} кг.'
          : '${productEntity.amount.value} г.';
    } else if (productEntity.amount is Quantity) {
      return '${productEntity.amount.value} шт.';
    }
    return '';
  }

  String totalPriceAsString(int price) {
    final integer = price ~/ 100;
    final integerString = integer.toString();
    return '$integerString руб.';
  }

  String totalPriceWithSaleAsString(ProductEntity productEntity) {
    final salePrice = productEntity.price - productEntity.sale;
    final integer = (salePrice ~/ 100).toString();
    return '$integer руб.';
  }
}
