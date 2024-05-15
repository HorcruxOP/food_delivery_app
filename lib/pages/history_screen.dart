import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/empty_history_screen.dart';
import 'package:food_delivery_app/components/history_tile.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        title: Text(
          "History",
          style: CustomFontStyle.semiBoldText.copyWith(
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("order")
                    .doc("confirmed order")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.active) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: snapshot.data!["ordersList"].length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: HistoryTile(
                                    name: snapshot.data!["ordersList"][index]
                                        ["name"],
                                    address: snapshot.data!["ordersList"][index]
                                        ["address"],
                                    deliveryMethod: snapshot.data!["ordersList"]
                                        [index]["deliveryMethod"],
                                    paymentMethod: snapshot.data!["ordersList"]
                                        [index]["paymentMethod"],
                                    phoneNumber: snapshot.data!["ordersList"]
                                        [index]["phoneNumber"],
                                    totalPrice: snapshot.data!["ordersList"]
                                        [index]["totalPrice"],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.hasError.toString()),
                      );
                    } else {
                      return const EmptyHistoryScreen();
                    }
                  } else {
                    return const Center(
                        child: CircularProgressIndicator(
                      color: Color.fromRGBO(255, 70, 10, 1),
                    ));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
