
import 'package:surf_flutter_courses_template/domain/productmodel.dart';
import 'package:surf_flutter_courses_template/moks/moks.dart';


//сортировка по цене по убыванию
List<ProductEntity> ascendingPrice(List<ProductEntity> products) {
  for (var i = 0; i < products.length - 1; i++) {
    for (var j = i + 1; j < products.length; j++) {
      if (products[i].price > products[j].price) {
        final temprary = products[i];
        products[i] = products[j];
        products[j] = temprary;
      }
    }
  }
  return products;
}

/// сортировка по цене по возрастанию
List<ProductEntity> descendingPrice(List<ProductEntity> products) {
  for (var i = 0; i < products.length - 1; i++) {
    for (var j = i + 1; j < products.length; j++) {
      if (products[i].price < products[j].price) {
        final temprary = products[i];
        products[i] = products[j];
        products[j] = temprary;
      }
    }
  }
  return products;
}

///сортировка по имени от А до Я
List<ProductEntity> fromAZTitle (List<ProductEntity> products) {
  final sortedList = products..sort((a, b) => a.title.compareTo(b.title));
  return sortedList;
}

///сортировка по имени от Я до А
List<ProductEntity> fromZATitle (List<ProductEntity> products) {
  final sortedList = products..sort((a, b) => b.title.compareTo(a.title));
  return sortedList;
}

///сортировка по типу от А до Я
List<ProductEntity> typeAZ(List<ProductEntity> products) {
  final sortedList = products
    ..sort((a, b) => a.category.name.compareTo(b.category.name));
  return sortedList;
}

///сортировка по типу от Я до А
List<ProductEntity> typeZA(List<ProductEntity> products) {
  final sortedList = products
    ..sort((a, b) => b.category.name.compareTo(a.category.name));
  return sortedList;
}

List<ProductEntity> unsorted (List<ProductEntity> products) {
  
  return productList;
}