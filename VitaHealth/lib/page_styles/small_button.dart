import 'package:flutter/material.dart';
const primaryColor = Color(0xFF4e5ae8);

class SmallButton extends StatelessWidget {

  final String label;
  final Function() onTap;

  const SmallButton({ Key? key, required this.label, required this.onTap })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: primaryColor
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25),
          child: Text(
            label,
            //textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,),
          ),
        ),
      ),
    );
  }
}