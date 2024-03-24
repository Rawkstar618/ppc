import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/template/booking_confirmation.dart';
import 'package:ppc/template/hotels.dart';
import 'package:ppc/template/text_fields.dart';

class HotelRequestForm extends StatefulWidget {
  const HotelRequestForm({required this.hotelDetails, super.key});
  final Hotels hotelDetails;
  @override
  State<StatefulWidget> createState() {
    return _HotelRequestFormState();
  }
}

class _HotelRequestFormState extends State<HotelRequestForm> {
  TextEditingController checkInController = TextEditingController(),
      checkOutController = TextEditingController(),
      noOfGuestsController = TextEditingController(),
      noOfRoomsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                      "Booking\nRequest",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const ShapeDecoration(
                      color: Color.fromRGBO(13, 13, 13, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    constraints: const BoxConstraints(
                      minHeight: 120,
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "lib/assets/gallery_placeholder.png",
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                          constraints: const BoxConstraints(
                            minHeight: 110,
                            minWidth: 110,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            const SizedBox(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 35,
                                ),
                                Text(
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                    widget.hotelDetails.name),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: Color.fromRGBO(224, 171, 67, 1),
                                      size: 14,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        widget.hotelDetails.location),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        " Rs.${widget.hotelDetails.price} onwards"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                    constraints: BoxConstraints(
                        maxHeight: 80,
                        maxWidth: MediaQuery.of(context).size.width * 0.6),
                    child: const Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromRGBO(159, 159, 159, 1),
                        ),
                        softWrap: true,
                        "Enter your details to request booking for this hotel"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Column(
                    children: [
                      TextFields(
                        hintText: "Check-in",
                        fieldIcon: const Icon(
                          Icons.calendar_today_outlined,
                          color: Color.fromRGBO(224, 171, 67, 1),
                        ),
                        textController: checkInController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFields(
                        hintText: "Check-out",
                        fieldIcon: const Icon(
                          Icons.calendar_today_outlined,
                          color: Color.fromRGBO(224, 171, 67, 1),
                        ),
                        textController: checkOutController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFields(
                        hintText: "No. of Guest/s",
                        fieldIcon: const Icon(
                          Icons.person_outline,
                          color: Color.fromRGBO(224, 171, 67, 1),
                        ),
                        textController: noOfGuestsController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFields(
                        hintText: "No. of Room/s",
                        fieldIcon: const Icon(
                          Icons.hotel_outlined,
                          color: Color.fromRGBO(224, 171, 67, 1),
                        ),
                        textController: noOfRoomsController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                        child: Text(
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(100, 100, 100, 1),
                          ),
                          "Rooms & other details will be shared by our team based on availability.",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BookingConfirmation(),
                        ),
                      );
                    },
                    child: const Text(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      "SEND REQUEST",
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
