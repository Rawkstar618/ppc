import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DinnerMenu extends StatelessWidget {
  const DinnerMenu({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> menuItems = [
      "Kashmiri Pulao",
      "Chicken Biryani",
      "Mutton Kasha",
      "Fish Finger",
      "Kashmiri Pulao",
      "Kashmiri Pulao",
      "Mutton Kasha",
    ];
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "lib/assets/bg-2.png",
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color.fromRGBO(224, 171, 67, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      style: GoogleFonts.libreCaslonDisplay(
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                        fontSize: 50,
                        color: const Color.fromRGBO(224, 171, 67, 1),
                      ),
                      "Dinner\nMenu",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(30, 30, 30, 1),
                      border: Border.all(
                        color: Color.fromRGBO(50, 50, 50, 1),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        for (int i = 0; i < menuItems.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.local_dining_outlined,
                                      color: Color.fromRGBO(224, 171, 67, 1),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      style: const TextStyle(fontSize: 16),
                                      menuItems[i],
                                    ),
                                  ],
                                ),
                                (i < menuItems.length - 1)
                                    ? const Divider()
                                    : const SizedBox()
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(224, 171, 67, 1),
                      ),
                      minimumSize: MaterialStatePropertyAll(
                        Size.fromHeight(55),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      "BACK",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
