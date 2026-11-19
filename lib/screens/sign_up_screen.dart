import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdg_test/core/widget/custom_bottom.dart';
import 'package:gdg_test/core/widget/text_filed_section.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: .infinity,
        child: Stack(
          children: [
            Container(
              height: 300,
              width: .infinity,

              color: Color(0xff121223),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/Ellipse 1005.svg',
                    colorFilter: ColorFilter.mode(
                      const Color.fromARGB(255, 255, 255, 255),
                      BlendMode.srcIn,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      'assets/Vector 142.svg',
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 138, 91, 48),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  Column(
                    spacing: 10,
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    children: [
                      SizedBox(width: .infinity),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 35,
                          fontWeight: .bold,
                        ),
                      ),

                      Text(
                        'Please sign up to get started',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 20,
                          fontWeight: .w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Positioned(
              top: 270,
              right: 0,
              left: 0,
              child: Container(
                width: .infinity,
                height: 600,

                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Column(
                    spacing: 20,
                    children: [
                      SizedBox(),
                      TextFeildSection(
                        hintText: 'fathy ahmed',
                        textFieldName: 'Name',
                      ),
                      TextFeildSection(
                        hintText: 'example@gmail.com',
                        textFieldName: 'Email',
                      ),
                      TextFeildSection(
                        hintText: '***************',
                        textFieldName: 'PASSWORD',
                        privacy: true,
                        isSuffixIcon: true,
                      ),
                      TextFeildSection(
                        hintText: '***************',
                        textFieldName: 'RE-TYPE PASSWORD',
                        privacy: true,
                        isSuffixIcon: true,
                      ),
                      Spacer(),
                      CustomBottom(customBottomText: 'SIGN UP'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
