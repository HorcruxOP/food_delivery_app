import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/functions/cartFunctions.dart';

// ignore: must_be_immutable
class CartTile extends StatefulWidget {
  CartTile(
      {super.key,
      required this.name,
      required this.price,
      required this.imageUrl,
      required this.quantity});
  final String name, price, imageUrl;
  int quantity;

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: 120,
          width: 340,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(widget.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      overflow: TextOverflow.ellipsis,
                      style: CustomFontStyle.semiBoldText.copyWith(
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "₹${widget.price}",
                      style: CustomFontStyle.semiBoldText.copyWith(
                        color: const Color.fromRGBO(255, 75, 58, 1),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 20,
          child: Container(
            width: 90,
            height: 35,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 75, 58, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.quantity == 1
                    ? GestureDetector(
                        onTap: () {
                          delete("cart", widget.name);
                        },
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 17,
                        ))
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.quantity -= 1;
                          });
                          update(
                              "cart", widget.name, "quantity", widget.quantity);
                        },
                        child: Text(
                          "-",
                          style: CustomFontStyle.semiBoldText.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                Text(
                  widget.quantity.toString(),
                  style: CustomFontStyle.semiBoldText.copyWith(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.quantity += 1;
                    });
                    update("cart", widget.name, "quantity", widget.quantity);
                  },
                  child: Text(
                    "+",
                    style: CustomFontStyle.semiBoldText.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
