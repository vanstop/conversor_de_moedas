import 'package:conversor_de_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test("Deve converter de real para dolar", (){
    fromText.text = "2.0";
    homeController.convert();
    expect(toText.text, "0.36");
  });
}