import 'package:conversor_de_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(child: Image.asset("assets/images/conversor_logo.png", width: 150, height: 150,), borderRadius: BorderRadius.circular(25),),
              SizedBox(height: 50),
              
              CurrencyBox(),
              SizedBox(height: 50),

              CurrencyBox(),
              SizedBox(height: 50),

              ElevatedButton(child: Text("Converter"), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}