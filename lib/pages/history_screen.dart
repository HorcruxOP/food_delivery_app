import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: Container(
              margin: const EdgeInsets.only(left: 30),
              child: Image.asset("assets/images/chevron-left.png")),
        ),
        centerTitle: true,
        title: Text(
          "History",
          style: CustomFontStyle.semiBoldText.copyWith(
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/empty-history.png",
            ),
            const SizedBox(height: 20),
            Text(
              "No history yet",
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
      ),
    );
  }
}
