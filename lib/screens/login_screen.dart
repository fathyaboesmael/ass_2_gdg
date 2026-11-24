import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdg_test/core/widget/custom_bottom.dart';
import 'package:gdg_test/core/widget/text_filed_section.dart';
import 'package:gdg_test/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  bool? rememberMe = false;
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
                      const Color.fromARGB(255, 138, 91, 48),
                      BlendMode.srcIn,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset('assets/Vector 142.svg'),
                  ),
                  Column(
                    spacing: 10,
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    children: [
                      SizedBox(width: .infinity),

                      Text(
                        'log in',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 35,
                          fontWeight: .bold,
                        ),
                      ),

                      Text(
                        'Please sign in to your existing account',
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
                  child: Form(
                    key: formKey,
                    child: Column(
                      spacing: 15,
                      children: [
                        SizedBox(),
                        TextFeildSection(
                          obscureText: false,
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !value.contains('@')) {
                              return "please Enter VAILD EMAIL ";
                            }
                            return null;
                          },

                          hintText: 'example@gmail.com',
                          textFieldName: 'Email',
                        ),
                        TextFeildSection(
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length < 7) {
                              return "please Enter VAILD password ";
                            }
                            return null;
                          },
                          hintText: '***************',
                          textFieldName: 'PASSWORD',
                          isSuffixIcon: true,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  rememberMe = value;
                                });
                              },
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(fontSize: 16, fontWeight: .w400),
                            ),
                            Spacer(),
                            Text(
                              'Forgot Password',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: .w400,
                                color: Color(0xffFF7622),
                              ),
                            ),
                          ],
                        ),
                        CustomBottom(
                          customBottomText: 'LOG IN ',
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            } else {
                              print('not vaild');
                            }
                          },
                        ),
                        SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: .w400,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(text: "Don't have an account?   "),
                              TextSpan(
                                text: "SIGN UP\n",
                                style: TextStyle(color: Color(0xffFF7622)),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Or',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: .w400,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: .spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 30,
                                child: Image.asset('assets/google.png'),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 30,
                                child: Image.asset('assets/facebook.png'),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 30,
                                child: Image.asset('assets/linkedin.png'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
