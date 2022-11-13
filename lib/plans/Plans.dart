// import 'package:flutter/material.dart';
// import 'package:geniopay/plans/plansController.dart';
// import 'package:geniopay/utility/constants.dart';
// import 'package:get/get.dart';
//
// import '../widgets/functionWidgets.dart';
// import '../widgets/planWidgetPage.dart';
//
// class Plans extends GetView<PlanController>{
//   const Plans({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       backgroundColor: Constants.primary,
//       appBar: AppBar(
//         backgroundColor: Constants.primary,
//         elevation: 0,
//         leading: IconButton(onPressed: (){
//           Get.back();
//         },icon: const Icon(Icons.arrow_back,color: Colors.black,),),
//         centerTitle: true,
//         actions:  [
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0),
//             child:IconButton(onPressed: (){}
//               ,icon: const Icon(Icons.help_outline,color: Colors.black,),),
//           ),
//         ],
//       ),
//       body: ListView(
//         children:  [
//           Center(child: FunctionWidgets.normalTextCenter("The more money you send, the better your insurance gets",24, Constants.secondary)),
//           const SizedBox(height: 60,),
//
//           GestureDetector(
//               onHorizontalDragEnd: (value){},
//               child: PlanPager.plansPager("Basic")
//           ),
//
//           const SizedBox(height: 15,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 10,
//                 height: 10,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadiusDirectional.circular(5),
//                   color: Colors.grey
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 8.0,right: 8.0),
//                 child: Container(
//                   width: 20,
//                   height: 20,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadiusDirectional.circular(10),
//                       color: Constants.secondary
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 10,
//                 height: 10,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadiusDirectional.circular(5),
//                     color: Colors.grey
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 15,),
//           Align(
//             alignment: Alignment.center,
//             child: RichText(
//               text: const TextSpan(
//                 text: 'Terms & Conditions apply, click ',
//                 style: TextStyle(fontFamily: "IBM_Plex_Sans_medium",fontSize: 15,color: Colors.black87),
//                 children: <TextSpan>[
//                   TextSpan(text: 'here', style: TextStyle(fontFamily: "IBM_Plex_Sans_medium",color: Constants.secondary,fontSize: 15,decoration: TextDecoration.underline)),
//                   TextSpan(text: ' for more', style: TextStyle(fontFamily: "IBM_Plex_Sans_medium",fontSize: 15,color: Colors.black87)),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 15,),
//         ],
//       ),
//     );
//   }
//
// }