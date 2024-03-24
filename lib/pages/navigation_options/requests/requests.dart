import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Requests extends StatelessWidget {
  const Requests({required this.backHome, super.key});
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
                "All\nRequests")
          ],
        ),
        const SizedBox(
          height: 250,
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(40, 40, 40, 1),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  size: 30,
                  color: Color.fromRGBO(224, 171, 67, 1),
                  Icons.near_me_outlined,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(159, 159, 159, 1),
                ),
                "No Upcoming Requests to Show"),
          ],
        ),
      ],
    ));
  }
}
