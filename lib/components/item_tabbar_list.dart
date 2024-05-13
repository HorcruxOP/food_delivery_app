import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/pages/food_details_page.dart';

class ItemTabBarList extends StatelessWidget {
  const ItemTabBarList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FoodDetailsPage(
                    imageUrl:
                        "https://images.moneycontrol.com/static-mcnews/2023/10/pexels-zi%E2%80%99s-foodnatureart-9027521.jpg",
                    name: 'Veggie tomato mix',
                    price: '₹900',
                  ),
                ));
          },
          child: Container(
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
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              "Veggie tomato mix",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: CustomFontStyle.semiBoldText.copyWith(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "₹900",
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
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.moneycontrol.com/static-mcnews/2023/10/pexels-zi%E2%80%99s-foodnatureart-9027521.jpg",
                        ),
                      ),
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
