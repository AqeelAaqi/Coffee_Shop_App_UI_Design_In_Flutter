import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  List img = [
    "Latte",
    "Espresso",
    "Cold Coffee",
    "Black Coffee",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for(int i = 0; i < img.length; i++) Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
          decoration: BoxDecoration(
            color: Color(0xFF212325),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
