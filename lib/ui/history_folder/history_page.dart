

import 'package:flutter/material.dart';

import '../main_page/widget/appbar_widget.dart';

class ScreenHistory extends StatelessWidget {
  const ScreenHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), 
          child: appBarwidget(
            title: 'History',
            )
            ),
      body: Text('home page'),
    );
  }
}