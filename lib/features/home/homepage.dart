import 'package:coffee_app_ui/features/Detail/details_screen.dart';
import 'package:coffee_app_ui/features/home/bloc/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedType = 0;

  late HomeCubit homeCubit;

  @override
  void initState() {
    homeCubit = context.read<HomeCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 10, 21),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Appbar(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Find the best \ncoffee for you",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: "   Find your coffee...",
                  hintStyle: TextStyle(
                    color: Colors.white.withAlpha(100),
                  ),
                  prefixIcon: Icon(
                    Iconsax.search_normal5,
                    size: 20,
                    color: Colors.white.withAlpha(100),
                  ),
                  filled: true,
                  fillColor: Color(0xFF2D2C32),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 20, top: 20),
                scrollDirection: Axis.horizontal,
                itemCount: homeCubit.coffeeTypes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedType = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        spacing: 5,
                        children: [
                          Text(
                            homeCubit.coffeeTypes[index],
                            style: TextStyle(
                              color: selectedType == index
                                  ? Colors.orange
                                  : Colors.white,
                            ),
                          ),
                          if (selectedType == index)
                            Icon(Icons.circle, size: 8, color: Colors.orange),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                spacing: 10,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF2D2C32),
                            Color(0xFF171419),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 180,
                      child: Column(
                        spacing: 6,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/capp0.webp',
                                    height: 150,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ))),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              "Cappuccino",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text("with Oat Milk",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$5.00",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 40,
                                  height: 40,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF2D2C32),
                          Color(0xFF171419),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: 180,
                    child: Column(
                      spacing: 6,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/capp2.webp',
                                  height: 150,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ))),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "Cappuccino",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text("with Chocolate Milk",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$4.99",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Special for you",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF2D2C32),
                      Color(0xFF171419),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                child: Row(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/capp2.webp",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("5 Coffee Beans You \nMust Try",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 10, 21),
        leading: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withAlpha(2),
                ),
                color: Color.fromARGB(255, 33, 32, 39),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(1),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withAlpha(2),
                  ),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 58, 58, 82),
                    Color.fromARGB(255, 26, 20, 38),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                spacing: 5,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        width: 8,
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        width: 8,
                        height: 8,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        width: 8,
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        width: 8,
                        height: 8,
                      )
                    ],
                  ),
                ],
              ),
            )),
        actions: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white.withAlpha(2),
              ),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 58, 58, 82),
                Color.fromARGB(255, 26, 20, 38),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withAlpha(10),
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Image.asset(
                'assets/profile.png',
                color: Colors.white,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
