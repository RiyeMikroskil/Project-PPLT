import 'package:flutter/material.dart';
import 'package:project_uas/carousel_img.dart';
import 'package:project_uas/screen_home.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  void initState() {
    usernameEmpty = false;
    passwordEmpty = false;
    // _passwordVisible = false;

    super.initState();
  }

  bool? usernameEmpty;
  bool? passwordEmpty;
  bool passwordVisible = true;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff382b5c),
              Color(0xff2e2a3e),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            //iyaa sisa di box loginnya ada juga
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 380,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/ram1.png',
                                width: 150,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  'assets/anime/login_dulu.png',
                                  width: 100,
                                  // alignment: Alignment.topRight,
                                ),
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Colors.transparent),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff4c1818),
                                      Color(0xff1a1a18),
                                    ])),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: Text(
                                    'Username',
                                    style: TextStyle(
                                        fontFamily: 'JollyLodger',
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: TextFormField(
                                        controller: usernameController,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white60,
                                          errorText: usernameEmpty == true
                                              ? 'Username harus diisi'
                                              : null,
                                          border: const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent)),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: Text(
                                    'Password',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'JollyLodger'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: TextFormField(
                                        obscureText: passwordVisible,
                                        controller: passwordController,
                                        decoration: InputDecoration(
                                            filled: true,
                                            // label:
                                            //     const Text('Masukkan Password'),
                                            enabledBorder:
                                                const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors
                                                            .transparent)),
                                            border: const OutlineInputBorder(),
                                            focusColor: Colors.white,
                                            fillColor: Colors.white60,
                                            errorText: passwordEmpty == true
                                                ? 'Password harus diiisi'
                                                : null,
                                            suffixIcon: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  passwordVisible = false;
                                                });
                                              },
                                              onDoubleTap: () {
                                                setState(() {
                                                  passwordVisible = true;
                                                });
                                              },
                                              child: Icon(passwordVisible
                                                  ? Icons.visibility
                                                  : Icons.visibility_off),
                                            )),
                                      )),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    'Lupa Password?',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontFamily: 'JollyLodger',
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                          foregroundColor: Colors.white),
                                      onPressed: () {
                                        if (usernameController.text.isEmpty) {
                                          setState(() {
                                            usernameEmpty = true;
                                          });
                                        }
                                        if (passwordController.text.isEmpty) {
                                          setState(() {
                                            passwordEmpty = true;
                                          });
                                        } else {
                                          usernameEmpty = false;
                                          passwordEmpty = false;
                                          setState(() {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ScreenCarousel(
                                                          userName_:
                                                              usernameController,
                                                        )));
                                          });
                                        }
                                      },
                                      child: const Text('Login',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'JollyLodger',
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: Colors.red[800],
                                          disabledForegroundColor:
                                              Colors.amber.withOpacity(0.38)),
                                      onPressed: () {},
                                      child: const Text('Register',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'JollyLodger',
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/mai1.png',
                  width: 150,
                ),
              )
            ],
          ),
        ));
  }
}
