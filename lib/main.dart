import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/Home.dart';
import 'utility/constants.dart';
void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(primaryColor: Constants.primary,primaryColorDark: Constants.secondaryLight,primaryColorLight:Constants.secondaryLighter,secondaryHeaderColor: Constants.secondary ),
    initialRoute: "/",
    getPages: [
      GetPage(name: '/', page: ()=> const Home()),
    ],
  ));
}