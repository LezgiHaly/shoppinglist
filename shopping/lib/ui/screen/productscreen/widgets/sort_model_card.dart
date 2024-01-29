import 'package:flutter/material.dart';
import '../../../../domain/sort_type.dart';
import '../../../res/styles.dart';

/// Модальное окно сортировки
///
/// Как можно упростить этот код?

class SortModelCard extends StatefulWidget {
  const SortModelCard({super.key, required this.sortType});

  final SortType sortType;

  @override
  State<SortModelCard> createState() => _SortModelState();
}

class _SortModelState extends State<SortModelCard> {
  SortType? _sortType;
  @override
  void initState() {
    super.initState();
    _sortType = widget.sortType;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  sort,
                  style: text20Bold,
                ),
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close, size: 24),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        RadioListTile<SortType>(
          activeColor: buttonColorGreen,
          title: Text(
            unsorted,
            style: text16.copyWith(color: darkBluColor),
          ),
          value: SortType.unsorted,
          groupValue: _sortType,
          onChanged: (SortType? value) {
            setState(() {
              _sortType = value;
            });
          },
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            byName,
            style: text12.copyWith(color: darkBluColor),
          ),
        ),
        RadioListTile<SortType>(
          activeColor: buttonColorGreen,
          title: Text(
            fromAZTitle,
            style: text16.copyWith(color: darkBluColor),
          ),
          value: SortType.fromAZTitle,
          groupValue: _sortType,
          onChanged: (SortType? value) {
            setState(() {
              _sortType = value;
            });
          },
        ),
        RadioListTile<SortType>(
          activeColor: buttonColorGreen,
          title: Text(
            fromZATitle,
            style: text16.copyWith(color: darkBluColor),
          ),
          value: SortType.fromZATitle,
          groupValue: _sortType,
          onChanged: (SortType? value) {
            setState(() {
              _sortType = value;
            });
          },
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            byPrice,
            style: text12.copyWith(color: darkBluColor),
          ),
        ),
        RadioListTile<SortType>(
          activeColor: buttonColorGreen,
          title: Text(
            ascendingPrice,
            style: text16.copyWith(color: darkBluColor),
          ),
          value: SortType.ascendingPrice,
          groupValue: _sortType,
          onChanged: (SortType? value) {
            setState(() {
              _sortType = value;
            });
          },
        ),
        RadioListTile<SortType>(
          activeColor: buttonColorGreen,
          title: Text(
            descendingPrice,
            style: text16.copyWith(color: darkBluColor),
          ),
          value: SortType.descendingPrice,
          groupValue: _sortType,
          onChanged: (SortType? value) {
            setState(() {
              _sortType = value;
            });
          },
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            byType,
            style: text12.copyWith(color: darkBluColor),
          ),
        ),
        RadioListTile<SortType>(
          activeColor: buttonColorGreen,
          title: Text(
            fromAZType,
            style: text16.copyWith(color: darkBluColor),
          ),
          value: SortType.fromAZType,
          groupValue: _sortType,
          onChanged: (SortType? value) {
            setState(() {
              _sortType = value;
            });
          },
        ),
        RadioListTile<SortType>(
          activeColor: buttonColorGreen,
          title: Text(
            fromZAType,
            style: text16.copyWith(color: darkBluColor),
          ),
          value: SortType.fromZAType,
          groupValue: _sortType,
          onChanged: (SortType? value) {
            setState(() {
              _sortType = value;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 16,
          ),
          child: SizedBox(
            width: double.infinity,
            height: 40,
            child: FilledButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColorGreen),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(_sortType);
              },
              child: Text(
                done,
                style: text16Blod.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class Radilist extends StatefulWidget {
//   const Radilist(
//       {super.key,
//       required this.tittle,
//       required this.value,
//       required this.groupValue, required this.onChanged});

//   final String tittle;
//   final SortType value;
//   final SortType groupValue;
//   final SortType onChanged;

//   @override
//   State<Radilist> createState() => _RadilistState();
// }

// class _RadilistState extends State<Radilist> {

//   SortType? _sortType;

//   @override
//   Widget build(BuildContext context) {
//     return RadioListTile(
//       activeColor: buttonColorGreen,
//       title: Text(
//         widget.tittle ,
//         style: text16.copyWith(color: darkBluColor),
//       ),
//       value: widget.value,
//       groupValue: widget.groupValue,
//       onChanged: (SortType? value) {
//         setState(() {
//           _sortType = value;
//         });
//       },
//     );
//   }
// }
