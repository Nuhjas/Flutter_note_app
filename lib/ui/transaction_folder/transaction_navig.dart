import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note1/core/color/colors.dart';

ValueNotifier<int> transactionNotifier = ValueNotifier(0);

class transactionNavigation extends StatelessWidget {
  const transactionNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: transactionNotifier, 
      builder:(context, int tranIndex, _) {
        
        return BottomNavigationBar(
          currentIndex: tranIndex,
          onTap: (index){
            transactionNotifier.value = index;
          },
          elevation: 5,
          backgroundColor: backgroundColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(
        color: Colors.white
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.grey
      ),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart),label: 'Debt'),
            BottomNavigationBarItem(icon: Icon(Icons.currency_exchange_sharp),label: 'Lend')
          ]
           );

      },);
  }
}