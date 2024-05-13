import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.only(left: 30),
            child: Image.asset("assets/images/chevron-left.png"),
          ),
        ),
        centerTitle: true,
        title: Text(
          "",
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
              "assets/images/feather_search.png",
            ),
            SizedBox(height: 20),
            Text(
              "Item not found",
              style: CustomFontStyle.semiBoldText.copyWith(fontSize: 28),
            ),
            SizedBox(height: 20),
            Text(
              "Try searching the item with\na different keyword",
              textAlign: TextAlign.center,
              style: CustomFontStyle.regularText.copyWith(
                fontSize: 17,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
            ),
            // GestureDetector(
            //   child: Container(
            //     height: 70,
            //     width: 314,
            //     decoration: BoxDecoration(
            //       color: const Color.fromRGBO(255, 70, 10, 1),
            //       borderRadius: BorderRadius.circular(30),
            //     ),
            //     child: Center(
            //       child: Text(
            //         "Login",
            //         style: CustomFontStyle.semiBoldText.copyWith(
            //           fontSize: 17,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
