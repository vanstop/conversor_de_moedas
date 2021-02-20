import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController{
  List<CurrencyModel> currencies;

  CurrencyModel fromCurrency;
  final TextEditingController fromText;

  CurrencyModel toCurrency;
  final TextEditingController toText;

  HomeController({this.fromText, this.toText}){
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert(){

    String text = fromText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue;

    if(toCurrency.name == "Real"){
      returnValue = value * fromCurrency.real;
    }
    else if(toCurrency.name == "Dolar"){
      returnValue = value * fromCurrency.dolar;
    }
    else if(toCurrency.name == "Euro"){
      returnValue = value * fromCurrency.euro;
    }
    else if(toCurrency.name == "Bitcoin"){
      returnValue = value * fromCurrency.bitcoin;
    }

    toText.text = returnValue.toStringAsFixed(2);
  }
}