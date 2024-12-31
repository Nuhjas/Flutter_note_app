import 'package:flutter/material.dart';
import 'package:note1/core/color/colors.dart';
import 'package:note1/core/constraints.dart';
import 'package:note1/ui/home1/widget/floating_add_detail.dart';
import 'package:note1/ui/main_page/widget/appbar_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(headsize), 
          child: appBarwidget(
            title: 'Home',
            )
            ),
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
          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
            return floatAddDetails();
          },));
        },
        child: Icon(Icons.add),
        )
        
    );
  }
}
