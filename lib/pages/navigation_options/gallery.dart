import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/pages/stores/kolkata_store.dart';
import 'package:ppc/template/gallery_card.dart';

class Gallery extends StatelessWidget {
  const Gallery({required this.backHome, super.key});
  final void Function() backHome;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: backHome,
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(224, 171, 67, 1),
                ),
              ),
              Text(
                  style: GoogleFonts.libreCaslonDisplay(
                    height: 1.2,
                    fontWeight: FontWeight.w400,
                    fontSize: 50,
                    color: const Color.fromRGBO(224, 171, 67, 1),
                  ),
                  "Our\nGallery")
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GalleryCard(
                    onPressed: () {},
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Wedding Collection"),
                GalleryCard(
                    onPressed: () {},
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Bangladesh Store"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GalleryCard(
                    onPressed: () {},
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Latest Collection"),
                GalleryCard(
                    onPressed: () {},
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Bridal Store"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GalleryCard(
                    onPressed: () {},
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Wedding Collection"),
                GalleryCard(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const KolkataStore(),
                        ),
                      );
                    },
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Kolkata Store"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GalleryCard(
                    onPressed: () {},
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Latest Collection"),
                GalleryCard(
                    onPressed: () {},
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Bridal Store"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GalleryCard(
                    onPressed: () {},
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Wedding Collection"),
                GalleryCard(
                    onPressed: () {},
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Bangladesh Store"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
