import 'package:flutter/material.dart';

class LayCon{
  static Size size;
  static double double2 ;
  static double double5 ;
  static double double8 ;
  static double double10 ;
  static double double14 ;
  static double double15 ;
  static double double16 ;
  static double double18;
  static double double20;
  static double double24;
  static double double25;
  static double double30;
  static double double35;
  static double double50;
  static init(Size val){
    size = val;
    double2 = size.width * 0.005;
    double5 = size.width * 0.011;
    double8 = size.width * 0.018;
    double10 = size.width * 0.0223;
    double14 = size.width * 0.0312;
    double15 = size.width * 0.0335;
    double16 = size.width * 0.0357;
    double18 = size.width * 0.04;
    double20 = size.width * 0.045;
    double24 = size.width * 0.0535;
    double25 = size.width * 0.0557;
    double30 = size.width * 0.0668;
    double35 = size.width * 0.078;
    double50 = size.width * 0.11;
    // print(double8);
  }
}