import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/template/store_card.dart';

class KolkataStore extends StatefulWidget {
  const KolkataStore({super.key});
  @override
  State<StatefulWidget> createState() {
    return _KolkataStoreState();
  }
}

class _KolkataStoreState extends State<KolkataStore> {
  @override
  Widget build(BuildContext context) {
    List<List<String>> kStoreImages = [
      [
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
      ],
      [
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
      ],
      [
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
      ],
      [
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
      ],
      [
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
      ],
      [
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
        "lib/assets/gallery_placeholder.png",
      ],
    ];
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("lib/assets/bg-2.png"),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              style: GoogleFonts.libreCaslonDisplay(
                                height: 1.2,
                                fontWeight: FontWeight.w400,
                                fontSize: 50,
                                color: const Color.fromRGBO(224, 171, 67, 1),
                              ),
                              "Kolkata\nStore"),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      for (int i = 0; i < kStoreImages.length; i++)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int j = 0; j <= 2; j++)
                              StoreCard(
                                onTap: () {
                                  showDialog(
                                    useSafeArea: true,
                                    context: context,
                                    builder: (context) => Scaffold(
                                      backgroundColor: Colors.transparent,
                                      body: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const SizedBox(),
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(
                                                  size: 32,
                                                  Icons.clear_sharp,
                                                  color: Color.fromRGBO(
                                                      224, 171, 67, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: (MediaQuery.of(context)
                                                    .size
                                                    .height) *
                                                0.6,
                                            width: (MediaQuery.of(context)
                                                    .size
                                                    .width) *
                                                0.8,
                                            child: Card(
                                              color: const Color.fromRGBO(
                                                  217, 217, 217, 1),
                                              child: Image.asset(
                                                fit: BoxFit.fill,
                                                kStoreImages[i][j],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                imgLoc: kStoreImages[i][j],
                              ),
                          ],
                        )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
