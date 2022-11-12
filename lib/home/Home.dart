import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utility/constants.dart';
import '../widgets/CurvedNavigationBar.dart';
import 'homeController.dart';

class Home extends GetView<HomeController>{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red,
        child: Scaffold(
          body: ListView(

          ),
          bottomNavigationBar:CurvedNavigationBar(
           index: 2,
           backgroundColor: Colors.white70,
           buttonBackgroundColor: Constants.secondary,
           items:  <Widget>[
             SvgPicture.asset("assets/images/nav/card.svg"),
             SvgPicture.asset("assets/images/nav/dollar-square.svg"),
             SvgPicture.asset("assets/images/logo.svg",),
             SvgPicture.asset("assets/images/nav/wallet.svg"),
             SvgPicture.asset("assets/images/nav/menu.svg"),
           ],
           onTap: (index) {},
          ),
        ),
      ),
    );
  }

}