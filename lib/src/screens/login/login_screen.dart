import 'package:sisapp/src/styles/app_color.dart';
import 'package:sisapp/src/styles/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColor.primaryLight, AppColor.primary]),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset("assets/images/splash.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Hi Eddy",
                        style: AppTextStyle.style(
                            fontSize: 34, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Sign in to Continue",
                        style: AppTextStyle.style(
                            fontSize: 20,
                            color: Colors.white.withOpacity(0.4),
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(38),
                    topLeft: Radius.circular(38),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    TextFormField(
                      style: AppTextStyle.style(
                        color: Colors.black.withOpacity(0.8),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Helloworld@gmail.com',
                        labelText: 'Student ID',
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        labelStyle: AppTextStyle.style(
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: _isSecure,
                      style: AppTextStyle.style(
                        color: Colors.black.withOpacity(0.8),
                      ),
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isSecure = !_isSecure;
                              });
                            },
                            child: Icon(
                              Icons.remove_red_eye,
                              color: _isSecure
                                  ? Colors.black.withOpacity(0.8)
                                  : Colors.black.withOpacity(0.4),
                            ),
                          ),
                        ),
                        labelText: 'Password',
                        hintText: 'W3£%hkKY',
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        labelStyle: AppTextStyle.style(
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColor.primary,
                            AppColor.primary.withOpacity(0.7)
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 32),
                                child: Text(
                                  'SIGN IN',
                                  style: AppTextStyle.style(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.arrow_forward,
                                color: Colors.white, size: 32),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot Password?',
                            style: AppTextStyle.style(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
