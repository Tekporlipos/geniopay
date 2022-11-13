import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geniopay/exchange/exchangeController.dart';
import 'package:get/get.dart';
import 'dart:math';
import '../utility/constants.dart';
import '../widgets/functionWidgets.dart';

class Exchange extends GetView<ExchangeController>{
  const Exchange({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Constants.bg,
      appBar: AppBar(
        backgroundColor: Constants.bg,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.back();
        },icon: const Icon(Icons.close,color: Colors.black,),),
        centerTitle: true,
        title: FunctionWidgets.normalText("International transfer", 16,Constants.title,FontWeight.w700),
        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child:IconButton(onPressed: (){}
              ,icon: const Icon(Icons.help_outline,color: Colors.black,),),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0,right: 24),
        child: ListView(

          children: [
            Align(alignment: Alignment.centerRight,child: IconButton(onPressed: (){
              Get.back();
            },icon: SvgPicture.asset("assets/images/registration/carbon_calendar-add.svg"),),),
            const SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0,right: 24,top: 32,bottom: 32),
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FunctionWidgets.normalText("You send Poland", 6, Colors.black,FontWeight.w300),
                        FunctionWidgets.normalText("1 USD = 0.94 EUR",8, Colors.black,FontWeight.w300),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(right: 14.0),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(24/2),
                                      color: Constants.primary,
                                      image: const DecorationImage(
                                          image: AssetImage("assets/images/registration/united states.png"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                )
                            ),
                            DropdownButton(
                              icon:  SvgPicture.asset("assets/images/registration/Arrow-Down2.svg"),
                              alignment: AlignmentDirectional.center,
                              underline: const SizedBox(),
                              items: [
                                DropdownMenuItem(
                                  onTap: (){},
                                  child: FunctionWidgets.normalText("USD", 14, Constants.title,FontWeight.w500),
                                )
                              ], onChanged: (value){},
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        RichText(
                          text: const TextSpan(
                            text: '\$',
                            style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(text: '1,000.00', style: TextStyle(fontFamily: "IBM_Plex_Sans",color: Colors.black,fontSize: 24,fontWeight: FontWeight.w600)),
                               ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15,),

                    Row(
                      children: [
                        Transform.rotate(
                          angle: pi / 2.0,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.circular(16/2),
                                color: Constants.secondary,

                            ),
                            child: Center(child: SvgPicture.asset("assets/images/home/Wallet.svg"),),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            width: Get.width-20,
                            color: Constants.primary,
                          ),
                        )
                            ],
                    ),
                    const SizedBox(height: 5,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: FunctionWidgets.normalText("You send Poland", 6, Colors.black,FontWeight.w300)),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(40/2),
                                      color: Constants.primary,
                                      image: const DecorationImage(
                                          image: AssetImage("assets/images/registration/united states.png"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                )
                            ),
                            DropdownButton(
                              icon: SvgPicture.asset("assets/images/registration/Arrow-Down2.svg"),
                              alignment: AlignmentDirectional.center,
                              underline: const SizedBox(),
                              items: [
                                DropdownMenuItem(
                                  onTap: (){},
                                  child: FunctionWidgets.normalText("USD", 14, Constants.title,FontWeight.w500),
                                )
                              ], onChanged: (value){},
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        RichText(
                          text: const TextSpan(
                            text: '€',
                            style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 16,color: Constants.secondary,fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(text: '935.34', style: TextStyle(fontFamily: "IBM_Plex_Sans",color: Constants.secondary,fontSize: 24,fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            FunctionWidgets.normalText("Receiver", 14, Constants.secondary,FontWeight.w500),
            const SizedBox(height: 10,),
            FunctionWidgets.customOpCard(ClipOval(child: Image.asset("assets/images/registration/receiver.png",fit: BoxFit.cover,),),FunctionWidgets.normalText("Jane Smith",12,Constants.title,FontWeight.w600),
                Opacity(opacity: 0.5,
                child: FunctionWidgets.normalText("+44567876543",12,Constants.title,FontWeight.w300)), "", ""),
            const SizedBox(height: 20,),
            FunctionWidgets.normalText("Deliver time", 14, Constants.secondary,FontWeight.w500),
            const SizedBox(height: 10,),
            FunctionWidgets.customOpCard(SvgPicture.asset("assets/images/registration/fly.svg"),
                Row(children: [FunctionWidgets.normalText( "Instant",12,Constants.title,FontWeight.w600)],),
                Opacity(opacity: 0.5,
                child: FunctionWidgets.normalText("Within 30 minutes",12,Constants.title,FontWeight.w300)) , "Free", "\$3.00"),
            const SizedBox(height: 20,),
            FunctionWidgets.normalText("Payment method", 14, Constants.secondary,FontWeight.w500),
            const SizedBox(height: 10,),
            FunctionWidgets.customOpCard(SvgPicture.asset("assets/images/registration/method.svg"), FunctionWidgets.normalText("Card payment",12,Constants.title,FontWeight.w600),
                Row(children: [SvgPicture.asset("assets/images/registration/logos_mastercard.svg"),Opacity(opacity: 0.5,
                child: FunctionWidgets.normalText(" Mastercard X-123",12,Constants.title,FontWeight.w300))],) , "", ""),
            const SizedBox(height: 20,),
            FunctionWidgets.normalText("Reference", 14, Constants.secondary,FontWeight.w500),
            const SizedBox(height: 10,),
        Container(
          padding: const EdgeInsets.only(left: 16,right: 16,top: 18,bottom: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child:Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(40/2),
                            color: Constants.primary,

                        ),
                        child: Center(child: SvgPicture.asset("assets/images/registration/mess.svg"),),
                      )
                  ),
                  FunctionWidgets.normalText("School fees",12,Constants.title,FontWeight.w600),
                ],
              ),
              SvgPicture.asset("assets/images/registration/play.svg"),
            ],
          ),
        ),

            const SizedBox(height: 24,),


            Container(
              padding: const EdgeInsets.only(left: 16,right: 16,top: 18,bottom: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Constants.secondary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child:Center(child: SvgPicture.asset("assets/images/registration/tag.svg"),)
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(opacity: 0.5,
                          child: FunctionWidgets.normalText("Total to pay",13,Colors.white,FontWeight.w300)),
                          const SizedBox(height: 4,),
                          FunctionWidgets.normalText("\$1,005.00",16,Colors.white,FontWeight.w600)
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.play_arrow,color: Constants.secondary,),
                ],
              ),
            ),

            const SizedBox(height: 30,),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Constants.yellow,
              ),
              child:Center(child: FunctionWidgets.normalText("SEND",14,Colors.black,FontWeight.w600)),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

}