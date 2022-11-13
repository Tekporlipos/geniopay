import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/constants.dart';
import 'functionWidgets.dart';

class PlanPager{

static  Widget plansPager(String type){
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  FunctionWidgets.boldText(type, 24, Colors.black),
                  const SizedBox(height: 10,),
                  FunctionWidgets.normalTextCenter("Send E200 (or more) per \nmonth and get coverage for:", 18, Constants.secondary),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FunctionWidgets.normalText("Accidental death,\ndismemberment, or \nparalysis", 15, Colors.black),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FunctionWidgets.smallText("Up to", 10, Colors.black87),
                          const SizedBox(height: 5,),
                          FunctionWidgets.boldText("E5,000", 12, Colors.black),
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: 10,),
                  Container(
                    height: 1,
                    width: Get.width-32,
                    color: Constants.primary,
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FunctionWidgets.normalText("Accidental death,\ndismemberment, or \nparalysis", 15, Colors.black),
                          FunctionWidgets.smallText("(Caused by an accident)", 10, Colors.black87),
                        ],
                      ),
                      FunctionWidgets.boldText("NA", 12, Colors.black),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 1,
                    width: Get.width-32,
                    color: Constants.primary,
                  ),
                  const SizedBox(height: 10,),
                  Align(alignment: Alignment.centerLeft, child: FunctionWidgets.normalText("In case of death due to an accident:", 15, Constants.secondary)),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FunctionWidgets.boldText("Funeral cost", 12, Colors.black),
                      FunctionWidgets.boldText("NA", 12, Colors.black),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Align(alignment: Alignment.centerLeft, child: FunctionWidgets.normalText("OR", 16, Colors.black54)),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FunctionWidgets.boldText("Reparation", 12, Colors.black),
                      FunctionWidgets.boldText("NA", 12, Colors.black),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -30,
          right: Get.width/2-30,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(68/2),
              color: Constants.primary,
            ),

            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(60/2),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 138, 167, 0.6),
                    Color.fromRGBO(0, 138, 167, 0.7),
                    Color.fromRGBO(0, 138, 167, 0.9),
                    Color.fromRGBO(0, 138, 167, 1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0,0.3,0.6,1],
                ),
              ),
              child: Center(child: FunctionWidgets.boldText("B", 40, Colors.white)),
            ),
          ),
        ),
      ],
    );
  }
}