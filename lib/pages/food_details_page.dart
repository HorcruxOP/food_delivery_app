import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/functions/cartFunctions.dart';
import 'package:food_delivery_app/pages/cart_screen.dart';

class FoodDetailsPage extends StatefulWidget {
  const FoodDetailsPage(
      {super.key,
      required this.name,
      required this.price,
      required this.imageUrl});
  final String name, price, imageUrl;

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
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
            margin: const EdgeInsets.only(left: 30),
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
                    image: CachedNetworkImageProvider(
                      widget.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Text(
                widget.name,
                style: CustomFontStyle.semiBoldRounded.copyWith(
                  fontSize: 28,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                "₹${widget.price}",
                style: CustomFontStyle.boldRounded.copyWith(
                  fontSize: 22,
                  color: const Color.fromRGBO(255, 75, 58, 1),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Text(
              "Delivery info",
              style: CustomFontStyle.semiBoldRounded.copyWith(
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
              style: CustomFontStyle.regularText.copyWith(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Return policy",
              style: CustomFontStyle.semiBoldRounded.copyWith(
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
              style: CustomFontStyle.regularText.copyWith(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection("cart").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.active) {
                    if (snapshot.data!.docs
                        .any((doc) => doc["name"] == widget.name)) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartScreen(),
                            ),
                          );
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
                              "Go to cart",
                              style: CustomFontStyle.semiBoldText.copyWith(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          create("cart", widget.name, widget.name, widget.price,
                              widget.imageUrl, 1);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartScreen(),
                            ),
                          );
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
                      );
                    }
                  }
                  return const Center(child: CircularProgressIndicator());
                }),
          ],
        ),
      ),
    );
  }
}
