import 'package:flutter/material.dart';

import '../utility/constants.dart';

class BorderGradiant{

  static Widget borderGradiant(Widget child,double radius){
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(radius),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(0, 138, 167, 1),
            Color.fromRGBO(0, 138, 167, 0.9),
            Color.fromRGBO(0, 138, 167, 0.8),
            Color.fromRGBO(0, 138, 167, 0.7),
            Color.fromRGBO(0, 138, 167, 0.6),
            Color.fromRGBO(0, 138, 167, 0.5),
            Color.fromRGBO(0, 138, 167, 0.4),
            Color.fromRGBO(0, 138, 167, 0.3),
            Color.fromRGBO(0, 138, 167, 0.2),
            Color.fromRGBO(0, 138, 167, 0.17),
            Color.fromRGBO(0, 138, 167, 0.15),
            Color.fromRGBO(0, 138, 167, 0.1),
            Color.fromRGBO(0, 138, 167, 0),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.85,0.9,0.95,1],
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(radius),
          color: Constants.primary,
        ),
        margin: const EdgeInsets.all(2),
        child: child,
      ),
    );
  }

}