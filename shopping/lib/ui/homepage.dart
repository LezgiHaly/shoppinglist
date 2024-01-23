
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'package:surf_flutter_courses_template/ui/res/styles.dart';

import 'package:surf_flutter_courses_template/ui/screen/productscreen/screen.dart';



class HomaPage extends StatefulWidget {

const HomaPage({super.key});

  @override
  State<HomaPage> createState() => ProductScreenState();
}

class ProductScreenState extends State<HomaPage> {

   int selectedIndex = 3;
  
void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
       <Widget>  [
        const Center(child: Text('1'),), 
        const Center(child: Text('2'),),
        const Center(child: Text('3'),),
        const ProductScreen(),
        ]
      [selectedIndex],
        bottomNavigationBar:
                  BottomNavigationBar(     
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(icCatalog),
            label: catalog,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(icSearch),
            label: search,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(icBasket),
            label: cart,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(icPerson),
            label: personal,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: buttonColorGreen,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        onTap: onItemTapped,
      ),
    );
  }
}


