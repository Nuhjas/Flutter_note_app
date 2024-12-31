import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note1/ui/transaction_folder/debt_folder/widget/add_debt.dart';

import '../../../core/color/colors.dart';

class screenDebt extends StatelessWidget {
  const screenDebt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('per1',style: TextStyle(color:textcolor),),
              subtitle: Text('Mesa',style: TextStyle(color: textcolor)),
            );
            }, 
            separatorBuilder: (context, index) { 
              return Divider();
             }, 
             itemCount: 15,
          
      
          
        ),
      
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return addDebtScreen();
          },));
        } ,
        child: Icon(Icons.edit),
        ),
    );
  }
}