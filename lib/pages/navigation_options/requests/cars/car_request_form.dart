import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/template/booking_confirmation.dart';
import 'package:ppc/template/text_fields.dart';

class CarRequestForm extends StatefulWidget {
  const CarRequestForm({super.key});
  @override
  State<StatefulWidget> createState() {
    return _CarRequestFormState();
  }
}

class _CarRequestFormState extends State<CarRequestForm> {
  final TextEditingController doaController = TextEditingController(),
      toaController = TextEditingController(),
      noOfPersonsController = TextEditingController(),
      dropLocationController = TextEditingController();
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
                Column(
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
                    Center(
                      child: Image.asset("lib/assets/car.png"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(159, 159, 159, 1),
                      ),
                      softWrap: true,
                      "Enter your details to request booking",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        children: [
                          TextFields(
                            hintText: "Date of Arrival",
                            fieldIcon:
                                const Icon(Icons.calendar_today_outlined),
                            textController: doaController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFields(
                            hintText: "Time of Arrival",
                            fieldIcon: const Icon(
                              Icons.timer_outlined,
                            ),
                            textController: doaController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFields(
                            hintText: "No. of Person/s",
                            fieldIcon: const Icon(
                              Icons.person_outline,
                            ),
                            textController: doaController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFields(
                            hintText: "Drop Location",
                            fieldIcon: const Icon(Icons.location_on_outlined),
                            textController: doaController,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Center(
                            child: Text(
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(100, 100, 100, 1),
                              ),
                              "Car's & Driver's details will be shared after confirmation.",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 170,
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
                      Navigator.push(
                        context,
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
