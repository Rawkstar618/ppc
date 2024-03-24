import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/pages/navigation_options/requests/hotels/hotel_request_form.dart';
import 'package:ppc/template/hotel_card.dart';
import 'package:ppc/template/hotels.dart';

class HotelChoices extends StatelessWidget {
  const HotelChoices({super.key});

  @override
  Widget build(BuildContext context) {
    List<Hotels> hotelList = [
      const Hotels(
        name: "The Park",
        location: "Park Street, Kolkata",
        price: 5500,
        imgPath: "lib/assets/placeholder.png",
      ),
      const Hotels(
        name: "Oberoi Grand",
        location: "Dharamtala Esplanade, Kolkata",
        price: 5500,
        imgPath: "lib/assets/placeholder.png",
      ),
      const Hotels(
        name: "Hotel Hotel",
        location: "Somewhere, Kolkata",
        price: 6500,
        imgPath: "lib/assets/placeholder.png",
      )
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
                    Text(
                      style: GoogleFonts.libreCaslonDisplay(
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                        fontSize: 50,
                        color: const Color.fromRGBO(224, 171, 67, 1),
                      ),
                      "Hotel\nBooking",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                for (int i = 0; i < hotelList.length; i++)
                  Column(
                    children: [
                      HotelCard(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HotelRequestForm(
                                hotelDetails: hotelList[i],
                              ),
                            ),
                          );
                        },
                        hotelDetails: hotelList[i],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
