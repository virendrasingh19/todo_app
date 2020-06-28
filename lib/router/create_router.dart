import 'package:flutter/cupertino.dart';
import 'package:todoapp/screens/add_new_event.dart';

Route  CreateRouter() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AddNewEventClass(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
