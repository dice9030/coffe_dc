import 'package:flutter/material.dart';

class CardLabel extends StatelessWidget {

  final String title;
  final bool active;
  const CardLabel({
    super.key, required this.title, required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(
          color: active ? Color(0xffC67C4E): Color(0xffF5F5F5),
          borderRadius: BorderRadius.all(Radius.circular(4))                          
        ),
        child: Text(title, style: TextStyle(color: active ? Colors.white: Color(0xff313131)),),
      ),
    );
  }
}