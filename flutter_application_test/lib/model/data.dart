import 'package:flutter/material.dart';

class Data extends ChangeNotifier{
  
  final List<String> title = [
    'Моя машина',
    'Мой ребенок',
    'Моя квартира',
    'Мой кошелек',
    'Мой телефон',
  ];
  final List<Color> colorBox = [
     const Color(0xFF4385F6).withOpacity(0.2),
     const Color(0xFFCDC1FF).withOpacity(0.2),
     const Color(0xFFE4F9E4),
     const Color(0xFF71BBFF).withOpacity(0.2),
     const Color(0xFF77EDD9).withOpacity(0.2),
    ];

    final List<String> boxPath = [
      'images/blue.png',
      'images/lilac.png',
      'images/green.png',
      'images/lightblue.png',
      'images/lightgreen.png',
    ];
}
class Provider extends InheritedNotifier {
  final Data model;
  const Provider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(
          key: key,
          notifier: model,
          child: child,
        );

  static Provider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<Provider>();
  }

  static Provider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<Provider>()
        ?.widget;
    return widget is Provider ? widget : null;
  }
}

