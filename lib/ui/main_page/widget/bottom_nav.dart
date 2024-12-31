import 'package:flutter/material.dart';
import 'package:note1/core/color/colors.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(1);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexNotifier, 
    builder: (context,int newIndex, _) {
      return BottomNavigationBar(
      currentIndex: newIndex,
      onTap: (index) {
        indexNotifier.value=index;
      },
      elevation: 0,
      type: BottomNavigationBarType.fixed,
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
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows_outlined), label: 'Transaction'),
        BottomNavigationBarItem(
            icon: Icon(Icons.history_rounded), label: 'History')
      ],
    );
    },);
    
  }
}
