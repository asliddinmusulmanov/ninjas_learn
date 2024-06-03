import 'package:flutter/material.dart';
import 'package:ninjas_learn/models/products_model.dart';

import '../services/address.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  late Products products;
  Address address = Address();

  TextEditingController textEditingController = TextEditingController();

  List<Products> productsList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/img_2.png",
                    cacheWidth: 234,
                    cacheHeight: 60,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff454B60),
                    ),
                    label: Text(
                      "Junk Food",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(
                      color: Color(0xff454B60),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Container(
                width: 320,
                height: 88,
                decoration: const BoxDecoration(
                  color: Color(0xff9E9BC7),
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/img_5.png",
                        cacheHeight: 50,
                        cacheWidth: 150,
                      ),
                      const SizedBox(width: 5),
                      MaterialButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/img_4.png",
                          cacheWidth: 90,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Choose Your Favorites",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 144,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 144,
                      width: 132,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFF2F0),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Image.asset(
                        "assets/images/img_7.png",
                        cacheWidth: 60,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 144,
                      width: 132,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFF7EE),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Image.asset(
                        "assets/images/img_12.png",
                        cacheWidth: 90,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 144,
                      width: 132,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFF2F0),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Image.asset(
                        "assets/images/img_7.png",
                        cacheWidth: 60,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 144,
                      width: 132,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFF7EE),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Image.asset(
                        "assets/images/img_12.png",
                        cacheWidth: 90,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 144,
                      width: 132,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFF2F0),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Image.asset(
                        "assets/images/img_7.png",
                        cacheWidth: 60,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 144,
                      width: 132,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFF7EE),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Image.asset(
                        "assets/images/img_12.png",
                        cacheWidth: 90,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
