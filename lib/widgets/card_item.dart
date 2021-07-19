import 'package:banking_app/models/my_card.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.myCard}) : super(key: key);

  final MyCard myCard;

  @override
  Widget build(BuildContext context) {
    print(myCard.type);

    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(40.0),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(1.0, 1.0),
              color: Colors.cyan,
            )
          ]),
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Card"),
          SizedBox(
            height: 16,
          ),
          Text(
            myCard.cardNo,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Card Holder"),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    myCard.cardName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 100,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                child: Image.asset(myCard.type == 0
                    ? 'assets/images/mastercard.png'
                    : 'assets/images/visa.png'),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
