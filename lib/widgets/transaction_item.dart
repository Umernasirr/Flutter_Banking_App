import 'package:banking_app/models/my_payments.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({Key? key, required this.myTransaction})
      : super(key: key);

  final MyPayment myTransaction;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            border: Border.all(color: Theme.of(context).accentColor, width: 2),
            borderRadius: BorderRadius.circular(24)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.credit_card,
                  size: 30,
                  color: Colors.white70,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(myTransaction.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                Text(myTransaction.desc,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    )),
              ],
            ),
            Container(
              child: Text("\$${myTransaction.amount}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            )
          ],
        ));
  }
}
