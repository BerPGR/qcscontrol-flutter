import 'package:flutter/material.dart';
import 'package:qualitycontrol/screens/profile_page.dart';
import 'package:qualitycontrol/widgets/home_selector.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset('assets/images/logo.png'),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      "Janio",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen())),
                    child: Image.asset('assets/images/perfil.png'),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 190,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                Selector(text: "Acompanhar produtos"),
                Selector(text: "Relatório mensal")
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: JumpingDotEffect(
                activeDotColor: Color(0xFF2E84B3),
                dotColor: Color(0xFF9A0142),
                dotWidth: 8,
                dotHeight: 8),
          )
        ]),
      ),
    )));
  }
}
