import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/Ellipse 1005.svg'),
          Center(child: SvgPicture.asset('assets/Logo .svg', width: 150)),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset('assets/Ellipse 1006.svg'),
          ),
        ],
      ),
    );
  }
}
