import 'package:flutter/material.dart';

Positioned positionedContent(TabController tabController) {
  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    height: 50,
    child: Container(
      height: 100,
      color: Colors.black54,
      alignment: Alignment.center,
      child: TabPageSelector(
        controller: tabController,
        indicatorSize: 16,
        selectedColor: Colors.white,
        color: Colors.grey,
      ),
    ),
  );
}
