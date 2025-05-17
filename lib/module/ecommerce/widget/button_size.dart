import 'package:flutter/material.dart';



class ButtonSize extends StatelessWidget {
  final String title;
  final bool active;
  const ButtonSize({
    super.key, required this.title, required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: active ? Color(0xffF9F2ED): Colors.white,
          border: Border.all(color: active ?  Color(0xffC67C4E): Color(0xffE3E3E3),width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),     
        child: Text(title, textAlign: TextAlign.center, style: TextStyle(color: active ? Color(0xffC67C4E): Colors.black),),
      ),
    );
  }
}