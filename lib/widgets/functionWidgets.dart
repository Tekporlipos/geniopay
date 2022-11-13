import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utility/constants.dart';

class FunctionWidgets{
  static Widget smallText(String text,double size,Color colors){
    return Text(text,style:  TextStyle(fontFamily: "IBM_Plex_Sans", color: colors,fontWeight: FontWeight.w300,fontSize: size),);
  }
  static Widget normalText(String text,double size,Color colors,FontWeight fontWeight){
    return Text(text,style:  TextStyle(fontFamily: "IBM_Plex_Sans", color: colors,fontWeight: fontWeight,fontSize: size,),);
  }

  static Widget normalTextCenter(String text,double size,Color colors,FontWeight fontWeight){
    return Text(text,style:  TextStyle(fontFamily: "IBM_Plex_Sans", color: colors,fontWeight: fontWeight,fontSize: size,),textAlign: TextAlign.center,);
  }

  static Widget active(){
    return Padding(
      padding: const EdgeInsets.only(left: 4.0,right: 4.0),
      child: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(6),
            color: Constants.secondary
        ),
      ),
    );
  }

  static Widget inActive(){
    return Padding(
      padding: const EdgeInsets.only(left: 4.0,right: 4.0),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(4),
            color:const Color.fromRGBO(0, 138, 167, 0.3),
        ),
      ),
    );
  }

  static Widget smallTextUnderline(String text,double size,Color colors,TextDecoration decoration){
    return Text(text,style:  TextStyle(fontFamily: "IBM_Plex_Sans", color: colors,fontWeight: FontWeight.w400,fontSize: size,decoration: decoration),);
  }

  static Widget customCheckBox(bool checked){
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Constants.secondary,width: 2)
      ),
      child:  Center(child: checked
          ? const Icon(
        Icons.check,
        size: 30.0,
        color: Constants.secondary,
      )
          : const SizedBox(),
      ),
    );
  }


  static Widget identityMes(String svg,String message,Function function){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0,),
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(36/2),
                color: Constants.primary,
            ),
            child: Center(child: SvgPicture.asset(svg),),
          ),
        ),
        Expanded(
          flex:4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FunctionWidgets.normalText(message, 16, Constants.lightenText,FontWeight.w400),
              FunctionWidgets.smallTextUnderline("Learn more", 16, Constants.secondary, TextDecoration.underline)
            ],
          ),
        ),
      ],
    );
  }

  static Widget transactions(
      String name,
      String date,
      String state,
      String amount,
      Color color,
      String logo){
    return Padding(
      padding: const EdgeInsets.only(top: 8.0,left: 24,right: 24, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(40/2),
                        color: Constants.primary,
                        image: DecorationImage(
                          image: AssetImage(logo),
                          fit: BoxFit.cover
                        )
                    ),
                  )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FunctionWidgets.normalText(name,13,Constants.title,FontWeight.w400),
                  Opacity(opacity: 0.5,
                  child: FunctionWidgets.normalText(date,10,Constants.lighten,FontWeight.w100)),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FunctionWidgets.normalText(amount, 14, Constants.lighten,FontWeight.w400),
              Opacity( opacity: 0.5,
              child: FunctionWidgets.normalText(state, 10, color,FontWeight.w400)),
            ],)
        ],
      ),
    );
  }

  static Widget svgInCircle(String svg,String text){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Constants.secondary
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SvgPicture.asset(svg),
          ),
        ),
        const SizedBox(height: 4,),
        normalText(text, 12, Constants.secondary,FontWeight.w400)
      ],
    );
  }

  static Widget barge(Widget widget,int count){
    return Stack(
      children: [
         widget,
        Positioned(
          right: 0,
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadiusDirectional.circular(12/2)
            ),
            child: Center(child: Text(count.toString(),style: const TextStyle(fontSize: 8,color: Colors.white),),),
          ),
        )
      ],
    );
  }

  static Widget customCard(String title,String message,String image,Color color){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8),
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0,top: 19,bottom: 19,right: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FunctionWidgets.normalText(title, 14, Colors.white,FontWeight.w500),
                  const SizedBox(height: 4,),
                  FunctionWidgets.normalText(message, 10, Colors.white,FontWeight.w300),
                ],
              ),
              Image.asset(image),
            ],
          ),
        ),
      ),
    );
  }

  
 static Widget customOpCard(Widget logo,Widget title,Widget message,String state,String old){
    return  Container(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 18,bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
                    child: Center(child: logo,),
                  )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  title,
                  const SizedBox(height: 4,),
                  message,
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  FunctionWidgets.normalText(state,12,Constants.secondary,FontWeight.w300),
                  Opacity(opacity: 0.6,
                  child: FunctionWidgets.smallTextUnderline(old,12,Constants.title,TextDecoration.lineThrough))
                ],
              ),
              const SizedBox(width: 10,),
               SvgPicture.asset("assets/images/registration/play.svg"),
            ],
          )
        ],
      ),
    );
  }
  

}