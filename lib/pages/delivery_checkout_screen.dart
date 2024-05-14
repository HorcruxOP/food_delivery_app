import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/functions/orderFunctions.dart';
import 'package:food_delivery_app/pages/main_screen.dart';

class DeliveryCheckoutScreen extends StatefulWidget {
  const DeliveryCheckoutScreen({super.key, required this.totalValue});
  final String totalValue;

  @override
  State<DeliveryCheckoutScreen> createState() => _DeliveryCheckoutScreenState();
}

class _DeliveryCheckoutScreenState extends State<DeliveryCheckoutScreen> {
  int _selectedValue = 1;
  String selectedDeliveryMethod = "Pickup";
  int _selectedPaymentValue = 1;
  String selectedPaymentMethod = "Card";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
        surfaceTintColor: Colors.transparent,
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
          "Checkout",
          style: CustomFontStyle.semiBoldText.copyWith(
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery",
                style: CustomFontStyle.semiBoldText.copyWith(fontSize: 34),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Address details",
                    style: CustomFontStyle.semiBoldText.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "change",
                    style: CustomFontStyle.semiBoldText.copyWith(
                      fontSize: 18,
                      color: const Color.fromRGBO(255, 70, 10, 0.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bhupender Singh",
                      style: CustomFontStyle.semiBoldText.copyWith(
                        fontSize: 15,
                      ),
                    ),
                    const Divider(),
                    Text(
                      "Amrit Vihar Burari Amrit Vihar Burari Amrit Vihar Burari Amrit Vihar Burari Amrit Vihar Burari Amrit Vihar Burari",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomFontStyle.regularText.copyWith(
                        fontSize: 15,
                      ),
                    ),
                    const Divider(),
                    Text(
                      "12345678",
                      style: CustomFontStyle.regularText.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Delivery method",
                style: CustomFontStyle.semiBoldText.copyWith(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 190,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                selectedDeliveryMethod = "Pickup";
                              });
                            },
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Pickup",
                            style: CustomFontStyle.regularText.copyWith(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
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
                                selectedDeliveryMethod = "Door Delivery";
                              });
                            },
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Door Delivery",
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
              const SizedBox(height: 20),
              Text(
                "Payment method",
                style: CustomFontStyle.semiBoldText.copyWith(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
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
                            groupValue: _selectedPaymentValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedPaymentValue = value!;
                                selectedPaymentMethod = "Card";
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
                            groupValue: _selectedPaymentValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedPaymentValue = value!;
                                selectedPaymentMethod = "Bank Account";
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
                            groupValue: _selectedPaymentValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedPaymentValue = value!;
                                selectedPaymentMethod = "Paypal";
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
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: CustomFontStyle.regularText.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "₹${widget.totalValue}",
                    style: CustomFontStyle.semiBoldText.copyWith(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Center(
                child: GestureDetector(
                  onTap: () {
                    createOrderDeatils(
                      "order",
                      "confirmed order",
                      "Bhupender Singh",
                      widget.totalValue,
                      "123456789",
                      "Amrit Vihar Burari Amrit Vihar Burari Amrit Vihar Burari Amrit Vihar Burari Amrit Vihar Burari Amrit Vihar Burari",
                      selectedPaymentMethod,
                      selectedDeliveryMethod,
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainScreen(),
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
                        "Complete Order",
                        style: CustomFontStyle.semiBoldText.copyWith(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
