import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

bool isButton = false;

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      isButton = !isButton;
                      setState(() {});
                    },
                    color: isButton
                        ? const Color(0xffFFF8EE)
                        : const Color(0xffFF9385),
                    child: Text(
                      "Food",
                      style: TextStyle(
                        color:
                            isButton ? const Color(0xffFF8473) : Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      isButton = !isButton;
                      setState(() {});
                    },
                    color: isButton
                        ? const Color(0xffFF9385)
                        : const Color(0xffFFF8EE),
                    child: Text(
                      "Recipes",
                      style: TextStyle(
                        color:
                            isButton ? Colors.white : const Color(0xffFF8473),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/images/img_9.png",
              cacheWidth: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              "No Foods Found",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              "assets/images/img_11.png",
              cacheWidth: 220,
            ),
          ],
        ),
      ),
    );
  }
}
