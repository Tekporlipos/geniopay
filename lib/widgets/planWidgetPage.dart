import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utility/constants.dart';
import 'functionWidgets.dart';

class PlanPager{

static  Widget plansPager(String type){
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Material(
          elevation: 8,
          shadowColor: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  FunctionWidgets.normalText(type, 30, Colors.black,FontWeight.w700),
                  const SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0,right: 24),
                    child: FunctionWidgets.normalTextCenter("Send E200 (or more) per \nmonth and get coverage for:", 18, Constants.secondary,FontWeight.w500),
                  ),
                  const SizedBox(height: 32,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FunctionWidgets.normalText("Accidental death,\ndismemberment, or \nparalysis", 16, Colors.black,FontWeight.w500),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FunctionWidgets.smallText("Up to", 12, Constants.lightenText),
                          const SizedBox(height: 5,),
                          FunctionWidgets.normalText("€5,000", 16, Colors.black,FontWeight.w500),
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: 16,),
                  Container(
                    height: 1,
                    width: Get.width-32,
                    color: Constants.primary,
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FunctionWidgets.normalText("Accidental death,\ndismemberment, or \nparalysis", 15, Colors.black,FontWeight.w500),
                          const SizedBox(height: 8,),
                          FunctionWidgets.smallText("(Caused by an accident)", 16, Constants.lightenText),
                        ],
                      ),
                      FunctionWidgets.normalText("NA", 16, Colors.black,FontWeight.w500),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  Container(
                    height: 1,
                    width: Get.width-32,
                    color: Constants.primary,
                  ),
                  const SizedBox(height: 16,),
                  Align(alignment: Alignment.centerLeft, child: FunctionWidgets.normalText("In case of death due to an accident:", 14, Constants.secondary,FontWeight.w500)),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FunctionWidgets.normalText("Funeral cost", 16, Colors.black,FontWeight.w500),
                      FunctionWidgets.normalText("NA", 16, Colors.black,FontWeight.w500),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  Align(alignment: Alignment.centerLeft, child: FunctionWidgets.normalText("OR", 16, Constants.lightenText,FontWeight.w300)),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FunctionWidgets.normalText("Reparation", 16, Colors.black,FontWeight.w500),
                      FunctionWidgets.normalText("NA", 16, Colors.black,FontWeight.w500),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -90/2,
          right: Get.width/2-(90/2),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90/2),
              color: Constants.primary,
            ),

            child: Container(
              height: 76,
              width: 76,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(76/2),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 138, 167, 0.25),
                    Color.fromRGBO(0, 138, 167, 0.5),
                    Color.fromRGBO(0, 138, 167, 0.75),
                    Color.fromRGBO(0, 138, 167, 1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0,0.3,0.6,1],
                ),
              ),
              child: Center(child: SvgPicture.asset("assets/images/registration/b.svg")),
            ),
          ),
        ),
      ],
    );
  }
}