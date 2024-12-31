import 'package:flutter/material.dart';

import 'package:note1/core/color/colors.dart';
import 'package:note1/core/constraints.dart';

class addDebtScreen extends StatelessWidget {
  const addDebtScreen({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: const Text('Add Debt'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: hsizebox,
              ),
              TextFormField(
                style: TextStyle(color: txtclrgrey, fontSize: inptxt),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: txtclrgrey, width: 1.7)),
                  
                  border:OutlineInputBorder(),
                 
                  hintText: 'Name', hintStyle: TextStyle(color: txtclrgrey,fontSize: hinttxt ),
                  prefixIcon: Icon(Icons.person_2,color: txtclrgrey,)
                ),
              ),
              SizedBox(height: hsizebox,),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      
                      style: TextStyle(color: txtclrgrey, fontSize: inptxt),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: txtclrgrey, width: 1.7)),
                        border: OutlineInputBorder(),
                          hintText: 'Amount', 
                          hintStyle: TextStyle(color: txtclrgrey, fontSize: hinttxt),
                          prefixIcon: Icon(Icons.currency_rupee_sharp,color: txtclrgrey,)
                          ),
                          
                    ),
                  ),
                  Expanded(
                    child:
                       TextButton.icon(
                        onPressed: (){
                          showDatePicker(
                            context: context, 
                          initialDate: DateTime.now(), 
                          firstDate: DateTime.now().subtract(Duration(days: 1000)), 
                          lastDate: DateTime.now(),);
                        }, 
                        icon: Icon(Icons.calendar_today),
                        label: Text( DateTime.now().toString()),
                        ),
                      
                     
                  )
                ],
              )
            ],
          ),
        ));
  }
}
