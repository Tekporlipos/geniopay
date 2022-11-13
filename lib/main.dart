import 'package:flutter/material.dart';
import 'package:geniopay/identity/identiy.dart';
import 'package:get/get.dart';
import 'exchange/exchange.dart';
import 'home/home.dart';
import 'plans/Plans.dart';
import 'registration/registration.dart';
import 'utility/constants.dart';
import 'utility/pages.dart';
void main() {
  runApp(
      GetMaterialApp(
    theme: ThemeData(primaryColor: Constants.primary,primaryColorDark: Constants.secondaryLight,primaryColorLight:Constants.secondaryLighter,secondaryHeaderColor: Constants.secondary ),
    initialRoute: Pages.registration,
    getPages: [
      // GetPage(name: Pages.home, page: ()=> const Home()),
      // GetPage(name: Pages.exchange, page: ()=> const Exchange()),
      // GetPage(name: Pages.plans, page: ()=> const Plans()),
      GetPage(name: Pages.identity, page: ()=> const Identity()),
      GetPage(name: Pages.registration, page: ()=> const Registration()),
    ],
  ));
}