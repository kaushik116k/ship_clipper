import 'package:flutter/material.dart';

class ship extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var radius = 30.0;
    Path path = Path();
    path.moveTo(0, size.height/2);
    path.arcToPoint(Offset(size.width/8, size.height/4), clockwise: true, radius: Radius.circular(radius));
    path.lineTo(size.width/4, size.height/4);
    path.lineTo(size.width/2, 0);
    path.lineTo(size.width - size.width/4, size.height/4);
    path.lineTo(size.width - size.width/8, size.height/4);
    path.arcToPoint(Offset(size.width, size.height/2), clockwise: true, radius: Radius.circular(radius));
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height/2);

    /*path.moveTo(0, size.height);
    path.lineTo(size.width/2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();*/
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }

}