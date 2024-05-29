// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import '../../../res/styles.dart';

/// Эпп бар

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
          centerTitle: true,
          title: Column(
            children: [
              Text(
                receipt,
                style: text18Bold.copyWith(
                  color: darkBluColor,
                ),
              ),
              Text(
                date,
                style: text10.copyWith(color: textColorGrey),
              ),
            ],
          ),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: buttonColorGreen,
              ))
          // не могу понять в чем дело( не погу прилепить ассет
          // SvgPicture.asset(icBack,color: buttonColorGreen,

          ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
