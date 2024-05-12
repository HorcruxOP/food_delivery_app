import 'package:flutter/material.dart';

import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/pages/login_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 75, 58, 0.9),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              top: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset("assets/images/Group 3.png"),
                ),
                Text(
                  "Food for",
                  style: CustomFontStyle.heavyRounded.copyWith(
                    color: Colors.white,
                    fontSize: 60,
                    letterSpacing: 0.1,
                  ),
                ),
                Text(
                  "Everyone",
                  style: CustomFontStyle.heavyRounded.copyWith(
                    color: Colors.white,
                    height: 0.2,
                    fontSize: 60,
                    letterSpacing: 0.1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  right: 1,
                  bottom: 100,
                  child: Image.asset(
                    "assets/images/ToyFaces_Tansparent_BG_29.png",
                  ),
                ),
                Positioned(
                  left: 1,
                  bottom: 100,
                  child: Image.asset(
                    "assets/images/ToyFaces_Tansparent_BG_49.png",
                  ),
                ),
                Positioned(
                  top: 600,
                  right: 0,
                  left: 0,
                  bottom: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromRGBO(255, 75, 58, 1),
                          Color.fromRGBO(255, 75, 58, 0.9),
                          Color.fromRGBO(255, 75, 58, 0.9),
                          Color.fromRGBO(255, 75, 58, 0.9),
                          Color.fromRGBO(255, 75, 58, 0.9),
                          Color.fromRGBO(255, 75, 58, 0.7),
                          Color.fromRGBO(255, 75, 58, 0.7),
                          Color.fromRGBO(255, 75, 58, 0),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 40,
                  right: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ));
                    },
                    child: Container(
                      height: 70,
                      width: 314,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Get started",
                          style: CustomFontStyle.semiBoldText.copyWith(
                            fontSize: 17,
                            color: const Color.fromRGBO(255, 70, 10, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
