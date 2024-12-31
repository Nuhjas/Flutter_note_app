

import 'package:flutter/material.dart';
import 'package:note1/core/color/colors.dart';
import 'package:note1/ui/main_page/widget/appbar_widget.dart';

class floatAddDetails extends StatelessWidget {
  const floatAddDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(50),
      //   child: appBarwidget(title: 'add'), 
     // ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  
                  
                  hintText: 'Title', hintStyle: TextStyle(color: Colors.grey,fontSize: 35,fontWeight: FontWeight.w600),
                  
                  border: InputBorder.none,
                  
                ),
                cursorColor: cursorcolor,
                style: TextStyle(color: textcolor,),
              ),
              Expanded(child: 
              TextField(
                 keyboardType: TextInputType.multiline,
                 
                 style: TextStyle(color: textcolor),
                 cursorColor: cursorcolor,
                 textCapitalization: TextCapitalization.sentences,
                 expands: true,
                 maxLines: null,
              )
              )
            ],
          
          ),
        
    ));
  }
}