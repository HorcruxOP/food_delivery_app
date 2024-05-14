import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/pages/landing_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "My profile",
          style: CustomFontStyle.semiBoldText.copyWith(
            fontSize: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LandingPage(),
                    ),
                    (route) => false);
              },
              icon: const Icon(Icons.logout),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Information",
              style: CustomFontStyle.semiBoldText.copyWith(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 315,
              height: 133,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bhupender Singh",
                          style: CustomFontStyle.semiBoldText.copyWith(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Admin@gmail.com",
                          style: CustomFontStyle.regularText.copyWith(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Kh no 38/21,Gali No 17,A block, Amrit Vihar,Burari",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomFontStyle.regularText.copyWith(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Text(
              "Payment Method",
              style: CustomFontStyle.semiBoldText.copyWith(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 315,
              height: 231,
              padding: const EdgeInsets.only(
                left: 0,
                top: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        Radio(
                          activeColor: const Color.fromRGBO(255, 70, 10, 1),
                          value: 1,
                          groupValue: _selectedValue,
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = value!;
                            });
                          },
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromRGBO(255, 70, 10, 1),
                          ),
                          child: Image.asset(
                              "assets/images/bi_credit-card-2-front-fill.png"),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Card",
                          style: CustomFontStyle.regularText.copyWith(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Radio(
                          activeColor: const Color.fromRGBO(255, 70, 10, 1),
                          value: 2,
                          groupValue: _selectedValue,
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = value!;
                            });
                          },
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromRGBO(235, 71, 150, 1),
                          ),
                          child:
                              Image.asset("assets/images/dashicons_bank.png"),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Bank Account",
                          style: CustomFontStyle.regularText.copyWith(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Radio(
                          activeColor: const Color.fromRGBO(255, 70, 10, 1),
                          value: 3,
                          groupValue: _selectedValue,
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = value!;
                            });
                          },
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromRGBO(0, 56, 255, 1),
                          ),
                          child: Image.asset("assets/images/cib_paypal.png"),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Paypal",
                          style: CustomFontStyle.regularText.copyWith(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
