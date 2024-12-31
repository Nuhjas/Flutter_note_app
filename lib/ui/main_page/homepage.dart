import 'package:flutter/material.dart';
import 'package:note1/core/color/colors.dart';
import 'package:note1/ui/history_folder/history_page.dart';
import 'package:note1/ui/home1/home_screen.dart';

import 'package:note1/ui/transaction_folder/transation_page.dart';

import 'widget/bottom_nav.dart';

class home_screen extends StatelessWidget {
   home_screen({super.key});

final _pages =[
  ScreenHome(),
  ScreenTransaction(),
  ScreenHistory(),
  
  
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexNotifier, builder: (context,int index, _) {
          return _pages[index];
        },),
      ),
      bottomNavigationBar:  BottomNavigation(),
    );
  }
}
