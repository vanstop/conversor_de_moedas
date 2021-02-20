import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton(
              iconEnabledColor: Colors.blue,
              isExpanded: true,
              underline: Container(height: 1, color: Colors.blue,),
              items: [
                DropdownMenuItem(child: Text("Real")),
                DropdownMenuItem(child: Text("Dolar")),
                DropdownMenuItem(child: Text("Euro")),
                DropdownMenuItem(child: Text("Bitcoin")),
              ],

              onChanged: (value) {
                
              }
            ),
          ),
        ),
          
        SizedBox(width: 25),

        Expanded(
          flex: 3,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),                      
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue))
            ),
          ),
        ),
      ],
    );
  }
}