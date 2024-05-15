import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/pages/main_screen.dart';

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            "assets/images/Group 66.png",
          ),
          const SizedBox(height: 20),
          Text(
            "No orders yet",
            style: CustomFontStyle.semiBoldText.copyWith(fontSize: 28),
          ),
          const SizedBox(height: 20),
          Text(
            "Hit the orange button down\nbelow to Create an order",
            style: CustomFontStyle.regularText.copyWith(
              fontSize: 17,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ));
            },
            child: Container(
              height: 70,
              width: 314,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 70, 10, 1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  "Start Ordering",
                  style: CustomFontStyle.semiBoldText.copyWith(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
