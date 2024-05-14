import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/pages/food_details_page.dart';

class ItemTabBarList extends StatelessWidget {
  const ItemTabBarList({
    super.key,
    required this.docName,
    required this.listName,
  });
  final String listName, docName;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection("menu")
          .doc(docName)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active &&
            snapshot.hasData) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data![listName].length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final finalData = snapshot.data![listName][index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodDetailsPage(
                        imageUrl: finalData["image"],
                        name: finalData["name"],
                        price: finalData["price"],
                      ),
                    ),
                  );
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Text(
                                    finalData["name"],
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style:
                                        CustomFontStyle.semiBoldText.copyWith(
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "₹" + finalData["price"],
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
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                finalData["image"],
                              ),
                              fit: BoxFit.cover,
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
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
