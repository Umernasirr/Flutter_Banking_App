import 'package:banking_app/models/my_payments.dart';
import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  final MyPayment paymentItem;

  const PaymentItem({Key? key, required this.paymentItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.46,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.white38,
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(-3.0, 3.0)),
            ],
            borderRadius: BorderRadius.circular(32)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.credit_score_sharp,
              color: Theme.of(context).primaryColor,
              size: 40,
            ),
            SizedBox(height: 8),
            Text(paymentItem.title,
                style: TextStyle(fontSize: 18, color: Colors.white)),
            SizedBox(height: 8),
            Text(paymentItem.desc, style: TextStyle(color: Colors.white54)),
            SizedBox(height: 10),
            Text("\$${paymentItem.amount}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ))
          ],
        ));
  }
}
