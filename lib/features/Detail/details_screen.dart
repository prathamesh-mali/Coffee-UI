import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 10, 21),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage('assets/capp0.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 29, 28, 46),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 149, 146, 195),
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            right: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 29, 28, 46),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Color.fromARGB(255, 149, 146, 195),
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    color: Colors.black45,
                    child: Row(
                      spacing: 80,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            spacing: 4,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cappuccino",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                "With Oat Milk",
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 135, 132, 132),
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "⭐️ 4.5",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 8,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 20,
                              children: [
                                Container(
                                  width: 50,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 29, 28, 46),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: SvgPicture.asset(
                                          'assets/coffee_beans.svg',
                                          width: 28,
                                          height: 28,
                                        ),
                                      ),
                                      Text("Coffee",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10))
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 29, 28, 46),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    spacing: 2,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: SvgPicture.asset(
                                          'assets/milk_drop.svg',
                                          width: 28,
                                          height: 28,
                                        ),
                                      ),
                                      Text("Milk",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 118,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 29, 28, 46),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                  child: Text(
                                "Medium Roasted",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 470,
            left: 20,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 5,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text:
                                "A cappuccino is an espresso-based coffee drink that originated in Italy, and is traditionally prepared with steamed milk foam. Variations of the drink involve the use of cream instead of milk",
                            style: TextStyle(height: 1.5, color: Colors.white),
                          ),
                          TextSpan(
                            text: " ... Read More",
                            style: TextStyle(
                                height: 1.5,
                                color: Colors.orange,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Size",
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                              width: 110,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.orange),
                              ),
                              child: Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(color: Colors.orange),
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 110,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.white),
                              ),
                              child: Center(
                                child: Text(
                                  "M",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 110,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Center(
                              child: Text(
                                "L",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price",
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                      Text("\$4.99",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ],
                  ),
                  Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 169, 103, 3),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
