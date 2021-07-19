import 'package:banking_app/models/my_card.dart';
import 'package:banking_app/widgets/card_item.dart';
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
    return Material(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
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
                                child: Image.asset("assets/images/avatar.png")),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 269,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      CardItem(myCard: cards[index]),
                  itemCount: cards.length,
                ),
              )
            ],
          ),
        ));
  }
}
