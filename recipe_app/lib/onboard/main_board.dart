import 'package:flutter/material.dart';
import 'package:recipe_app/home.dart';
import 'package:recipe_app/onboard/board2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainBoard extends StatefulWidget {
  const MainBoard({super.key});

  @override
  State<MainBoard> createState() => _MainBoardState();
}

class _MainBoardState extends State<MainBoard> {
  // Corrected the spelling of controller
  final onBoardController = OnBoard2();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20.0), // Adds padding for better alignment
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: pageController,
              count: onBoardController.list.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.pink.shade100, // Customize dot colors
                dotHeight: 10,
                dotWidth: 10,
                expansionFactor: 3,
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              child: Icon(Icons.navigate_next),
              onPressed: () {
                if (pageController.page!.toInt() <
                    onBoardController.list.length - 1) {
                  pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: onBoardController.list.length,
        itemBuilder: (context, index) {
          final item = onBoardController.list[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SafeArea(
                child: Image.asset('assets/images/logo.jpg'),
              ),
              Image.asset(item.image),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                item.info,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          );
        },
      ),
    );
  }
}
