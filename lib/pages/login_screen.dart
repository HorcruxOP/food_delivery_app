import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/login_view.dart';
import 'package:food_delivery_app/components/signup_view.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.3),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 40,
                        ),
                        child: Image.asset(
                          "assets/images/Group3.png",
                          height: 150,
                          width: 150,
                        ),
                      ),
                      TabBar(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        dividerColor: Colors.transparent,
                        indicator: const UnderlineTabIndicator(
                          borderSide: BorderSide(
                            width: 3,
                            color: Color.fromRGBO(255, 75, 58, 1),
                          ),
                          insets: EdgeInsets.symmetric(horizontal: 25),
                        ),
                        unselectedLabelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: CustomFontStyle.semiBoldText.copyWith(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        tabs: const [
                          Tab(
                            text: "Login",
                          ),
                          Tab(
                            text: "Sign-up",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            LoginView(),
            SignUpView(),
          ],
        ),
      ),
    );
  }
}
