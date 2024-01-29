import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/ui/res/styles.dart';

import '../../../../domain/sort_type.dart';



/// Кнопка для вызоваза Модального окна 

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SortButtonWidget extends StatelessWidget {
  const SortButtonWidget({
    super.key,
    required VoidCallback onTap,
    required SortType sortType,
  })  : _sortType = sortType,
        _onTap = onTap;

  final VoidCallback _onTap;
  final SortType _sortType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
        ),
        child: GestureDetector(
          onTap: _onTap,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Icon(
                Icons.sort_rounded,
                color: textColorGrey,
              ),
              if (_sortType != SortType.unsorted)
                const Positioned(
                  right: 4,
                  bottom: 4,
                  child: Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 8,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
