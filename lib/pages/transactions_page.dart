import 'package:banking_app/models/my_payments.dart';
import 'package:banking_app/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              )),
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Transaction History",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          itemCount: myPayments.length,
                          itemBuilder: (BuildContext context, int index) {
                            return TransactionItem(
                                myTransaction: myPayments[index]);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
