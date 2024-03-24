import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/pages/navigation_options/requests/astrologer/astrologers.dart';
import 'package:ppc/pages/navigation_options/requests/cars/car_request_form.dart';
import 'package:ppc/pages/navigation_options/requests/dinner/dinner_request_form.dart';
import 'package:ppc/pages/navigation_options/requests/doctor/doctor_choices.dart';
import 'package:ppc/pages/navigation_options/requests/hotels/hotel_choices.dart';
import 'package:ppc/template/gallery_card.dart';

class NewRequest extends StatelessWidget {
  const NewRequest({required this.backHome, super.key});
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
                "Make\nA Request",
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Color.fromRGBO(224, 171, 67, 1),
                  ),
                  "What service would you like to request for?",
                ),
                SizedBox()
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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HotelChoices(),
                        ),
                      );
                    },
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Hotel"),
                GalleryCard(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CarRequestForm(),
                        ),
                      );
                    },
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Car"),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DinnerRequestForm(),
                        ),
                      );
                    },
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Dinner"),
                GalleryCard(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DoctorChoices(),
                        ),
                      );
                    },
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Doctor"),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Astrologers(),
                        ),
                      );
                    },
                    imgLoc: "lib/assets/gallery_placeholder.png",
                    label: "Astrologer"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
