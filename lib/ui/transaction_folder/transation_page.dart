

import 'package:flutter/material.dart';
import 'package:note1/core/color/colors.dart';
import 'package:note1/ui/transaction_folder/debt_folder/debt_page.dart';
import 'package:note1/ui/transaction_folder/lend_folder/lend_page.dart';
import 'package:note1/ui/transaction_folder/transaction_navig.dart';

import '../main_page/widget/appbar_widget.dart';

final _tranPage =[
  screenDebt(),
  screenLend(),
];

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({super.key});


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tranPage.length,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Transaction'),
        bottom: TabBar(
          
          tabs: [

            Tab(icon: Icon(Icons.pie_chart),text: 'Debt',
            ),
            Tab(icon: Icon(Icons.currency_exchange_sharp),text: 'Lend',),
          ]

        ),
      ),
      body: TabBarView(children: _tranPage,)
      
      ),
      
      
    );
  }
}