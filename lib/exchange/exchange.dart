// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:geniopay/exchange/exchangeController.dart';
// import 'package:get/get.dart';
// import 'dart:math';
// import '../utility/constants.dart';
// import '../widgets/functionWidgets.dart';
//
// class Exchange extends GetView<ExchangeController>{
//   const Exchange({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(242, 240, 240, 1),
//       appBar: AppBar(
//         backgroundColor: const Color.fromRGBO(242, 240, 240, 1),
//         elevation: 0,
//         leading: IconButton(onPressed: (){
//           Get.back();
//         },icon: const Icon(Icons.close,color: Colors.black,),),
//         centerTitle: true,
//         title: FunctionWidgets.boldText("International transfer", 14, Colors.black87),
//         actions:  [
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0),
//             child:IconButton(onPressed: (){}
//               ,icon: const Icon(Icons.help_outline,color: Colors.black,),),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 16.0,right: 16),
//         child: ListView(
//
//           children: [
//             Align(alignment: Alignment.centerRight,child: IconButton(onPressed: (){
//               Get.back();
//             },icon: const Icon(Icons.add_photo_alternate_outlined,color: Colors.black,),),),
//             const SizedBox(height: 10,),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 16.0,right: 16,top: 32,bottom: 32),
//                 child: Column(
//                   children: [
//
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         FunctionWidgets.normalText("You send Poland", 11, Colors.black54),
//                         FunctionWidgets.normalText("1 USD = 0.94 EUR", 11, Colors.black54),
//                       ],
//                     ),
//                     const SizedBox(height: 10,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Padding(
//                                 padding: const EdgeInsets.only(right: 8.0),
//                                 child: Container(
//                                   width: 40,
//                                   height: 40,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadiusDirectional.circular(40/2),
//                                       color: Constants.primary,
//                                       image: const DecorationImage(
//                                           image: AssetImage("assets/images/home/spotify.png"),
//                                           fit: BoxFit.cover
//                                       )
//                                   ),
//                                 )
//                             ),
//                             DropdownButton(
//                               icon: const Icon(Icons.arrow_drop_down_outlined,size:12 ,),
//                               alignment: AlignmentDirectional.center,
//                               underline: const SizedBox(),
//                               items: [
//                                 DropdownMenuItem(
//                                   onTap: (){},
//                                   child: FunctionWidgets.boldText("USD", 15, Colors.black87),
//                                 )
//                               ], onChanged: (value){},
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 10,),
//                         FunctionWidgets.boldText("\$1,000.00", 24, Colors.black),
//                       ],
//                     ),
//
//                     const SizedBox(height: 15,),
//
//                     Row(
//                       children: [
//                         Transform.rotate(
//                           angle: pi / 2.0,
//                           child: Container(
//                             width: 25,
//                             height: 25,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadiusDirectional.circular(25/2),
//                                 color: Constants.secondary,
//
//                             ),
//                             child: Center(child: SvgPicture.asset("assets/images/home/Wallet.svg"),),
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             height: 2,
//                             width: Get.width-20,
//                             color: Constants.primary,
//                           ),
//                         )
//                             ],
//                     ),
//                     const SizedBox(height: 5,),
//                     Align(
//                         alignment: Alignment.centerLeft,
//                         child: FunctionWidgets.normalText("You send Poland", 11, Colors.black54)),
//                     const SizedBox(height: 15,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Padding(
//                                 padding: const EdgeInsets.only(right: 8.0),
//                                 child: Container(
//                                   width: 40,
//                                   height: 40,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadiusDirectional.circular(40/2),
//                                       color: Constants.primary,
//                                       image: const DecorationImage(
//                                           image: AssetImage("assets/images/home/spotify.png"),
//                                           fit: BoxFit.cover
//                                       )
//                                   ),
//                                 )
//                             ),
//                             DropdownButton(
//                               icon: const Icon(Icons.arrow_drop_down_outlined,size:12 ,),
//                               alignment: AlignmentDirectional.center,
//                               underline: const SizedBox(),
//                               items: [
//                                 DropdownMenuItem(
//                                   onTap: (){},
//                                   child: FunctionWidgets.boldText("USD", 15, Colors.black87),
//                                 )
//                               ], onChanged: (value){},
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 10,),
//                         FunctionWidgets.boldText("E 935. 34", 24, Constants.secondary),
//                       ],
//                     ),
//
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20,),
//             FunctionWidgets.boldText("Receiver", 16, Constants.secondary),
//             const SizedBox(height: 10,),
//             FunctionWidgets.customOpCard("assets/images/home/profile.png",FunctionWidgets.boldText("Jane Smith",15,Colors.black),
//                 FunctionWidgets.normalText("+44567876543",12,Colors.black87), "", ""),
//             const SizedBox(height: 20,),
//             FunctionWidgets.boldText("Deliver time", 16, Constants.secondary),
//             const SizedBox(height: 10,),
//             FunctionWidgets.customOpCard("assets/images/home/profile.png",
//                 Row(children: [FunctionWidgets.normalText( "Instant",12,Colors.black87)],),
//                 FunctionWidgets.normalText("Within 30 minutes",12,Colors.black87) , "Free", "\$3.00"),
//             const SizedBox(height: 20,),
//             FunctionWidgets.boldText("Payment method", 16, Constants.secondary),
//             const SizedBox(height: 10,),
//             FunctionWidgets.customOpCard("assets/images/home/profile.png", FunctionWidgets.boldText("Card payment",15,Colors.black),
//                 Row(children: [FunctionWidgets.normalText("Mastercard X-123",12,Colors.black87)],) , "", ""),
//             const SizedBox(height: 20,),
//             FunctionWidgets.boldText("Reference", 16, Constants.secondary),
//             const SizedBox(height: 10,),
//         Container(
//           padding: const EdgeInsets.only(left: 16,right: 16,top: 18,bottom: 18),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(18),
//             color: Colors.white,
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 children: [
//                   Padding(
//                       padding: const EdgeInsets.only(right: 16.0),
//                       child:Container(
//                         width: 40,
//                         height: 40,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadiusDirectional.circular(40/2),
//                             color: Constants.primary,
//                             image:  const DecorationImage(
//                                 image: AssetImage("assets/images/home/profile.png"),
//                                 fit: BoxFit.cover
//                             )
//                         ),
//                       )
//                   ),
//                   FunctionWidgets.boldText("School fees",15,Colors.black),
//                 ],
//               ),
//               const Icon(Icons.play_arrow,color: Constants.secondary,),
//             ],
//           ),
//         ),
//
//             const SizedBox(height: 20,),
//
//
//             Container(
//               padding: const EdgeInsets.only(left: 16,right: 16,top: 18,bottom: 18),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Constants.secondary,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Row(
//                     children: [
//                       Padding(
//                           padding: const EdgeInsets.only(right: 16.0),
//                           child:Container(
//                             width: 40,
//                             height: 40,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadiusDirectional.circular(40/2),
//                                 color: Constants.primary,
//                                 image:  const DecorationImage(
//                                     image: AssetImage("assets/images/home/profile.png"),
//                                     fit: BoxFit.cover
//                                 )
//                             ),
//                           )
//                       ),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           FunctionWidgets.smallText("Total to pay",15,Colors.white),
//                           FunctionWidgets.boldText("\$1,005.00",12,Colors.white)
//                         ],
//                       ),
//                     ],
//                   ),
//                   const Icon(Icons.play_arrow,color: Constants.secondary,),
//                 ],
//               ),
//             ),
//
//             const SizedBox(height: 30,),
//
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Constants.yellow,
//               ),
//               child:Center(child: FunctionWidgets.boldText("SEND",18,Colors.black)),
//             ),
//             const SizedBox(height: 20,),
//           ],
//         ),
//       ),
//     );
//   }
//
// }