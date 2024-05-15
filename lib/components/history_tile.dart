import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';

class HistoryTile extends StatelessWidget {
  const HistoryTile(
      {super.key,
      required this.name,
      required this.address,
      required this.totalPrice,
      required this.deliveryMethod,
      required this.paymentMethod,
      required this.phoneNumber});
  final String name,
      address,
      totalPrice,
      deliveryMethod,
      paymentMethod,
      phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
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
            "Name:- $name",
            style: CustomFontStyle.semiBoldText.copyWith(
              fontSize: 15,
            ),
          ),
          const Divider(),
          Text(
            "Address:- $address",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomFontStyle.semiBoldText.copyWith(
              fontSize: 15,
            ),
          ),
          const Divider(),
          Text(
            "Phone no:- $phoneNumber",
            style: CustomFontStyle.semiBoldText.copyWith(
              fontSize: 15,
            ),
          ),
          const Divider(),
          Text(
            "Total Amount:- ₹$totalPrice",
            style: CustomFontStyle.semiBoldText.copyWith(
              fontSize: 15,
            ),
          ),
          const Divider(),
          Text(
            "Delivery Method:- $deliveryMethod",
            style: CustomFontStyle.semiBoldText.copyWith(
              fontSize: 15,
            ),
          ),
          const Divider(),
          Text(
            "Payment Method:- $paymentMethod",
            style: CustomFontStyle.semiBoldText.copyWith(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
