import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/pages/navigation_options/requests/dinner/dinner_menu.dart';
import 'package:ppc/template/booking_confirmation.dart';
import 'package:ppc/template/text_fields.dart';

class DinnerRequestForm extends StatefulWidget {
  const DinnerRequestForm({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DinnerRequestFormState();
  }
}

class _DinnerRequestFormState extends State<DinnerRequestForm> {
  final TextEditingController dateController = TextEditingController(),
      noOfPersonsController = TextEditingController();
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
                Center(
                  child: Image.asset("lib/assets/dinner.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    side: MaterialStatePropertyAll(
                      BorderSide(
                        color: Color.fromRGBO(224, 171, 67, 1),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(8, 8, 8, 1),
                    ),
                    fixedSize: MaterialStatePropertyAll(
                      Size(
                        150,
                        50,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DinnerMenu(),
                      ),
                    );
                  },
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Icon(
                          Icons.local_dining_outlined,
                          color: Color.fromRGBO(224, 171, 67, 1),
                        ),
                        SizedBox(),
                        Text(
                            style: TextStyle(
                              color: Color.fromRGBO(224, 171, 67, 1),
                            ),
                            "See Menu"),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      TextFields(
                        hintText: "Date",
                        fieldIcon: const Icon(Icons.calendar_month_outlined),
                        textController: dateController,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFields(
                        hintText: "No. of Person/s",
                        fieldIcon: Icon(Icons.person_outline),
                        textController: noOfPersonsController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
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
                    "We will confirm your booking.",
                  ),
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
