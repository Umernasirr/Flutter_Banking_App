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
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 26),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.8],
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor,
          ],
        ),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.credit_card,
            color: Colors.white54,
            size: 40,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            myCard.cardNo,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 8,
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
                width: 119,
              ),
              CircleAvatar(
                radius: 36,
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
