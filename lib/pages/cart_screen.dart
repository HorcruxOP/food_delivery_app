import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/cart_tile.dart';
import 'package:food_delivery_app/components/emptycart.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/pages/delivery_checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
        centerTitle: true,
        title: Text(
          "Cart",
          style: CustomFontStyle.semiBoldText.copyWith(
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 20,
        ),
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("cart").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: CartTile(
                                name: snapshot.data!.docs[index]["name"],
                                price: snapshot.data!.docs[index]["price"],
                                quantity: snapshot.data!.docs[index]
                                    ["quantity"],
                                imageUrl: snapshot.data!.docs[index]["image"],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          double totalAmount() {
                            double total = 0;
                            for (int i = 0;
                                i < snapshot.data!.docs.length;
                                i++) {
                              double quantity = double.parse(snapshot
                                  .data!.docs[i]["quantity"]
                                  .toString());
                              double price = double.parse(
                                  snapshot.data!.docs[i]["price"].toString());
                              total += quantity * price;
                              print(total.toString());
                            }
                            return total;
                          }

                          double totalValue = totalAmount();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DeliveryCheckoutScreen(
                                  totalValue: totalValue.toString(),
                                ),
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
                              "Proceed to checkout",
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
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.hasError.toString()),
                );
              } else {
                return const EmptyCartScreen();
              }
            } else {
              return Center(
                  child: const CircularProgressIndicator(
                color: const Color.fromRGBO(255, 70, 10, 1),
              ));
            }
          },
        ),
      ),
    );
  }
}
