import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/pages/cart_screen.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage(
      {super.key,
      required this.name,
      required this.price,
      required this.imageUrl});
  final String name, price, imageUrl;

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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/heart.png",
                color: Colors.black,
              ),
              selectedIcon: Image.asset(
                "assets/images/heart.png",
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 240,
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      imageUrl,
                    ),
                  ),
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                name,
                style: CustomFontStyle.semiBoldRounded.copyWith(
                  fontSize: 28,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                price,
                style: CustomFontStyle.boldRounded.copyWith(
                  fontSize: 22,
                  color: Color.fromRGBO(255, 75, 58, 1),
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Delivery info",
              style: CustomFontStyle.semiBoldRounded.copyWith(
                fontSize: 17,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
              style: CustomFontStyle.regularText.copyWith(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Return policy",
              style: CustomFontStyle.semiBoldRounded.copyWith(
                fontSize: 17,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
              style: CustomFontStyle.regularText.copyWith(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
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
                    "Add to cart",
                    style: CustomFontStyle.semiBoldText.copyWith(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
