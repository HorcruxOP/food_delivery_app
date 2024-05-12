import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 50,
        right: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email address",
              labelStyle: CustomFontStyle.semiBoldText.copyWith(
                color: Colors.grey,
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 30),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: CustomFontStyle.semiBoldText.copyWith(
                color: Colors.grey,
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Forgot Password?",
            style: CustomFontStyle.semiBoldText.copyWith(
              color: const Color.fromRGBO(255, 75, 58, 1),
              fontSize: 17,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.16),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 70,
              width: 314,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 70, 10, 1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: CustomFontStyle.semiBoldText.copyWith(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
