import 'package:banking_app/models/my_card.dart';
import 'package:banking_app/models/my_payments.dart';
import 'package:banking_app/widgets/card_item.dart';
import 'package:banking_app/widgets/payment_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Material(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            )),
            child: SingleChildScrollView(
              child: Column(children: [
                SafeArea(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi Umer",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        letterSpacing: 1),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Welcome Back!",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white70),
                                  )
                                ],
                              ),
                              Container(
                                child: CircleAvatar(
                                    radius: 29,
                                    child: Image.asset(
                                        "assets/images/avatar.png")),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 259,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        CardItem(myCard: cards[index]),
                    itemCount: cards.length,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Balance",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 20,
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Text("\$92,510",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                letterSpacing: 1)),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Upcoming payments",
                            style:
                                TextStyle(color: Colors.white54, fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8, right: 8),
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myPayments.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PaymentItem(paymentItem: myPayments[index]);
                    },
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
