import 'package:flutter/material.dart';

class Constants{

static Color primary = const Color.fromRGBO(107, 28, 97, 1);

static List<BoxShadow>? shadow = [
  BoxShadow(
    color: Colors.black12.withOpacity(0.2),
    spreadRadius: 3,
    blurRadius: 15,
    offset: const Offset(7, 5),// changes x,y position of shadow
  )
];
}
