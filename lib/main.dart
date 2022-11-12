import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'exchange/exchange.dart';
import 'home/home.dart';
import 'plans/Plans.dart';
import 'utility/constants.dart';
import 'utility/pages.dart';
void main() {
  runApp(
      GetMaterialApp(
    theme: ThemeData(primaryColor: Constants.primary,primaryColorDark: Constants.secondaryLight,primaryColorLight:Constants.secondaryLighter,secondaryHeaderColor: Constants.secondary ),
    initialRoute: Pages.home,
    getPages: [
      GetPage(name: Pages.home, page: ()=> const Home()),
      GetPage(name: Pages.exchange, page: ()=> const Exchange()),
      GetPage(name: Pages.plans, page: ()=> const Plans()),
    ],
  ));
}