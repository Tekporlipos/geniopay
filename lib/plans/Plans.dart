import 'package:flutter/material.dart';
import 'package:geniopay/plans/plansController.dart';
import 'package:geniopay/utility/constants.dart';
import 'package:get/get.dart';

import '../widgets/functionWidgets.dart';
import '../widgets/planWidgetPage.dart';

class Plans extends GetView<PlanController>{
  const Plans({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PlanController());
    return Scaffold(
      backgroundColor: Constants.primary,
      body: ListView(
        children:  [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(onPressed: (){
              Get.back();
            },icon: const Icon(Icons.arrow_back,color: Colors.black,),),
            centerTitle: true,
            actions:  [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child:IconButton(onPressed: (){}
                  ,icon: const Icon(Icons.help_outline,color: Colors.black,),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Center(child: FunctionWidgets.normalTextCenter("The more money you send, the better your insurance gets",18, Constants.secondary,FontWeight.w500)),
          ),
          const SizedBox(height: 60,),

          GestureDetector(
              onHorizontalDragEnd: (value){
                if(value.velocity.pixelsPerSecond.dx < value.velocity.pixelsPerSecond.dy){
                  if(controller.plansIndex.value > 0){
                    controller.plansIndex.value -= 1;
                  }else{
                    controller.plansIndex.value = 2;
                  }
                }else{
                  if(controller.plansIndex.value < 2){
                    controller.plansIndex.value += 1;
                  }else{
                    controller.plansIndex.value = 0;
                  }
                }
              },
              child: Obx(()=>PlanPager.plansPager(controller.plans[controller.plansIndex.value]))
          ),

          const SizedBox(height: 16,),
          Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:   controller.plans.map( (e) => controller.plans[controller.plansIndex.value] == e?FunctionWidgets.active():FunctionWidgets.inActive()).toList(),
          )),
          const SizedBox(height: 15,),
          Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
              text: const TextSpan(
                text: 'Terms & Conditions apply, click ',
                style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 14,color: Colors.black87,fontWeight: FontWeight.w500),
                children: <TextSpan>[
                  TextSpan(text: 'here', style: TextStyle(fontFamily: "IBM_Plex_Sans",color: Constants.secondary,fontSize: 14,decoration: TextDecoration.underline,fontWeight: FontWeight.w400)),
                  TextSpan(text: ' for more', style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 14,color: Colors.black87)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }

}