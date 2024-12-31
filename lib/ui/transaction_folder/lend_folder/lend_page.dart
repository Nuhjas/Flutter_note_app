import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/color/colors.dart';

class screenLend extends StatelessWidget {
  const screenLend({super.key});

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


        } ,
        child: Icon(Icons.add),
        ),
    );
  }
}