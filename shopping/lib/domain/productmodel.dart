// Модель продукта.
import 'package:surf_flutter_courses_template/domain/quantityproduct.dart';

///
/// Содержит в себе название, цену, категорию и ссылку на изображение.
class ProductEntity {
  /// Название товара.
  final String title;

  /// Цена товара в копейках. Без скидки.
  ///
  /// Подумайте и ответьте на три вопроса:
  /// 1. Почему цена хранится в копейках, а не в рублях?
  /// 2. Почему тип данных цены - [int], а не [double]?
  /// 3. Как можно было реализовать передачу цены иначе?
  ///

  ///
  /// 1. Удобно при расчетах
  /// 2. int точнее, проще
  /// 3. через double
  final int price;

  /// Категория товара.
  final Category category;

  /// Ссылка на изображение товара.
  final String imageUrl;

  /// Количество товара.
  ///
  /// Может быть описано в граммах [Grams] или в штуках [Quantity].
  final Amount amount;

  /// Скидка на товар.
  ///
  /// Требуется высчитать самостоятельно итоговую цену товара.
  final double sale;

  ProductEntity({
    required this.title,
    required this.price,
    required this.category,
    required this.imageUrl,
    required this.amount,
    this.sale = 0,
  });
}

/// Категория товара.
enum Category {
  food('Продукты питания'),
  tech('Технологичные товары'),
  care('Уход'),
  drinks('Напитки'),
  drugs('Медикаменты');

  final String name;

  const Category(this.name);
}
