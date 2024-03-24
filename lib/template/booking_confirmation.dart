import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/pages/services.dart';

class BookingConfirmation extends StatelessWidget {
  const BookingConfirmation({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("lib/assets/bg-2.png"),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Column(
                    children: [
                      Image.asset(
                        "lib/assets/confirmation.png",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        style: GoogleFonts.libreCaslonDisplay(
                          height: 1,
                          fontWeight: FontWeight.w400,
                          fontSize: 50,
                          color: const Color.fromRGBO(224, 171, 67, 1),
                        ),
                        "Thank You",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        style: TextStyle(
                          height: 1,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Color.fromRGBO(224, 171, 67, 1),
                        ),
                        "Your request has been received.",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        softWrap: true,
                        "Someone from our team will get back\nto you as soon as possible.",
                      ),
                    ],
                  ),
                  const SizedBox(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 15,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                      Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ),
                    ),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.black),
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(224, 171, 67, 1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Services(),
                      ),
                    );
                  },
                  child: const Text(
                    "BACK TO HOME",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
