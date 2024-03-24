import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/template/services_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<String> images = [
    "lib/assets/placeholder.png",
    "lib/assets/placeholder.png",
    "lib/assets/placeholder.png",
  ];
  late PageController _pageController = PageController();
  int activePage = 1;
  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index
                ? const Color.fromRGBO(224, 171, 67, 1)
                : const Color.fromARGB(127, 211, 211, 211),
            shape: BoxShape.circle),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 19,
                ),
                child: Image.asset(
                  "lib/assets/logo.png",
                  height: 32,
                  width: 61.22,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Padding(
                      padding: EdgeInsets.only(top: 22),
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 32,
                        color: Color.fromRGBO(224, 171, 67, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.circle,
                        color: Colors.grey,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 128,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  itemCount: images.length,
                  pageSnapping: true,
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(
                      () {
                        activePage = page;
                      },
                    );
                  },
                  itemBuilder: (context, position) => Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Image.asset(
                      images[position],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(
                  images.length,
                  activePage,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Our Services",
            style: GoogleFonts.libreCaslonDisplay(
              fontSize: 29,
              letterSpacing: 1,
              color: const Color.fromRGBO(224, 171, 67, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServicesCard(),
                ServicesCard(),
                ServicesCard(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServicesCard(),
                ServicesCard(),
                ServicesCard(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServicesCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
