import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/item_tabbar_list.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/pages/cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
          automaticallyImplyLeading: false,
          title: Container(
            margin: const EdgeInsets.only(left: 20),
            child: Image.asset(
              "assets/images/menu.png",
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartScreen(),
                        ));
                  },
                  child: Image.asset(
                    "assets/images/shopping-cart.png",
                    height: 30,
                    width: 30,
                  )),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delicious",
                    style: CustomFontStyle.boldRounded.copyWith(
                      fontSize: 34,
                      letterSpacing: 0.1,
                    ),
                  ),
                  Text(
                    "food for you",
                    style: CustomFontStyle.boldRounded.copyWith(
                      fontSize: 34,
                      height: 0.8,
                      letterSpacing: 0.1,
                    ),
                  ),
                  Container(
                    width: 300,
                    margin: const EdgeInsets.only(
                      top: 40,
                      bottom: 40,
                    ),
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 20,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/search.png"),
                        const SizedBox(width: 20),
                        Text(
                          "Search",
                          style: CustomFontStyle.semiBoldRounded.copyWith(
                            fontSize: 17,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TabBar(
                    splashFactory: NoSplash.splashFactory,
                    labelStyle:
                        CustomFontStyle.regularText.copyWith(fontSize: 17),
                    unselectedLabelColor: Colors.grey,
                    labelColor: const Color.fromRGBO(255, 75, 58, 1),
                    indicatorColor: const Color.fromRGBO(255, 75, 58, 1),
                    isScrollable: true,
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 4,
                    tabs: const [
                      Tab(
                        text: "Foods",
                      ),
                      Tab(
                        text: "Drinks",
                      ),
                      Tab(
                        text: "Snacks",
                      ),
                      Tab(
                        text: "Sauce",
                      ),
                      Tab(
                        text: "Beverages",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              height: 320,
              child: TabBarView(
                children: [
                  ItemTabBarList(
                    docName: "Foods",
                    listName: "FoodsList",
                  ),
                  ItemTabBarList(
                    docName: "Foods",
                    listName: "FoodsList",
                  ),
                  ItemTabBarList(
                    docName: "Foods",
                    listName: "FoodsList",
                  ),
                  ItemTabBarList(
                    docName: "Foods",
                    listName: "FoodsList",
                  ),
                  ItemTabBarList(
                    docName: "Foods",
                    listName: "FoodsList",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
