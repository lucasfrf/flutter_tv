import 'package:flutter/material.dart';
import 'package:flutter_tv/screen/home_screen/section/animal/animal.dart';
import 'package:flutter_tv/screen/home_screen/section/car/car.dart';
import 'package:flutter_tv/screen/home_screen/section/sport/sport.dart';

List<StatelessWidget> tabListWidget() {
  const tabViewChildren = [
    Sport(),
    Car(),
    Animal(),
  ];
  return tabViewChildren;
}
