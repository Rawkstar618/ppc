import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/pages/navigation_options/requests/doctor/cardiologist.dart';
import 'package:ppc/pages/navigation_options/requests/doctor/cardiologist_card.dart';
import 'package:ppc/template/booking_confirmation.dart';
import 'package:ppc/template/text_fields.dart';

class DoctorRequestForm extends StatefulWidget {
  const DoctorRequestForm({required this.selectedCardiologist, super.key});
  final Cardiologist selectedCardiologist;
  @override
  State<StatefulWidget> createState() {
    return _DoctorRequestFormState();
  }
}

class _DoctorRequestFormState extends State<DoctorRequestForm> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(),
        dateController = TextEditingController();
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
                CardiologistCard(
                  cardiologistInfo: widget.selectedCardiologist,
                  onTap: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                    constraints: BoxConstraints(
                        maxHeight: 80,
                        maxWidth: MediaQuery.of(context).size.width * 0.8),
                    child: const Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromRGBO(159, 159, 159, 1),
                        ),
                        softWrap: true,
                        "Enter your details to request booking"),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Column(
                    children: [
                      TextFields(
                        hintText: "Name of patient",
                        fieldIcon: const Icon(
                          Icons.person_outline,
                          color: Color.fromRGBO(224, 171, 67, 1),
                        ),
                        textController: nameController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFields(
                        hintText: "Select Date",
                        fieldIcon: const Icon(
                          Icons.calendar_today_outlined,
                          color: Color.fromRGBO(224, 171, 67, 1),
                        ),
                        textController: dateController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 330,
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
