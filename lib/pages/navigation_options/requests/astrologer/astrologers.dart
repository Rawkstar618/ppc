import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/pages/navigation_options/requests/astrologer/astrologer.dart';
import 'package:ppc/pages/navigation_options/requests/astrologer/astrologer_card.dart';
import 'package:ppc/pages/navigation_options/requests/astrologer/astrologer_request_form.dart';

class Astrologers extends StatelessWidget {
  const Astrologers({super.key});
  @override
  Widget build(BuildContext context) {
    List<Astrologer> astrologerList = [
      const Astrologer(
        imgPath: "lib/assets/gallery_placeholder.png",
        name: "Sukumar Banerjee",
        experience: 21,
      ),
      const Astrologer(
        imgPath: "lib/assets/gallery_placeholder.png",
        name: "Sukumar Banerjee",
        experience: 21,
      ),
      const Astrologer(
        imgPath: "lib/assets/gallery_placeholder.png",
        name: "Sukumar Banerjee",
        experience: 21,
      ),
      const Astrologer(
        imgPath: "lib/assets/gallery_placeholder.png",
        name: "Sukumar Banerjee",
        experience: 21,
      ),
    ];
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
                      "Cardiologist",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                for (Astrologer i in astrologerList)
                  AstrologerCard(
                    astrologerInfo: i,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AstrologerRequestForm(selectedAstrologer: i),
                        ),
                      );
                    },
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
