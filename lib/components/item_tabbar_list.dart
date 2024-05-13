import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';

class ItemTabBarList extends StatelessWidget {
  const ItemTabBarList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(
            left: 40,
          ),
          height: 320,
          width: 220,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  height: 280,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Veggie",
                        style: CustomFontStyle.semiBoldText.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "tomato mix",
                        style: CustomFontStyle.semiBoldText.copyWith(
                          fontSize: 20,
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "900",
                        style: CustomFontStyle.semiBoldText.copyWith(
                          fontSize: 18,
                          color: const Color.fromRGBO(255, 75, 58, 1),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 33,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }
}
