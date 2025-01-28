import 'package:flutter/material.dart';

class MyBotton extends StatelessWidget {
  const MyBotton({
    super.key,
    required this.valueClick,
    required this.icon
  });

  final VoidCallback valueClick;
  // final Widget icon;  es una manera pero para Icon está tambien otro parametros
  final IconData icon; // IconData se adentra al widget

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: valueClick,
      child: Icon(icon),
    );
  }
}
