import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.customBottomText,
    required this.onPressed,
  });
  final String customBottomText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffFF7622),
        minimumSize: Size(.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),

      onPressed: onPressed,
      child: Text(
        customBottomText,
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: .bold),
      ),
    );
  }
}
