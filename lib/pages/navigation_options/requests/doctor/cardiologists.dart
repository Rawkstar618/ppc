import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/pages/navigation_options/requests/doctor/cardiologist.dart';
import 'package:ppc/pages/navigation_options/requests/doctor/cardiologist_card.dart';
import 'package:ppc/pages/navigation_options/requests/doctor/doctor_request_form.dart';

class Cardiologists extends StatelessWidget {
  const Cardiologists({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Cardiologist> cardiologistList = [
      const Cardiologist(
        imgPath: "lib/assets/gallery_placeholder.png",
        name: "Dr. Ramesh Kr. Poddar",
        education: "MD, Dip. Cardio, FCCP",
        specialization: "Heart Specialist",
        experience: 15,
      ),
      const Cardiologist(
        imgPath: "lib/assets/gallery_placeholder.png",
        name: "Dr. S. K. Patra",
        education: "MD, Dip. Cardio, FCCP",
        specialization: "Heart Specialist",
        experience: 25,
      ),
      const Cardiologist(
        imgPath: "lib/assets/gallery_placeholder.png",
        name: "Dr. Ramesh Kr. Poddar",
        education: "MD, Dip. Cardio, FCCP",
        specialization: "Heart Specialist",
        experience: 15,
      ),
      const Cardiologist(
        imgPath: "lib/assets/gallery_placeholder.png",
        name: "Dr. Ramesh Kr. Poddar",
        education: "MD, Dip. Cardio, FCCP",
        specialization: "Heart Specialist",
        experience: 15,
      ),
      const Cardiologist(
        imgPath: "lib/assets/gallery_placeholder.png",
        name: "Dr. Ramesh Kr. Poddar",
        education: "MD, Dip. Cardio, FCCP",
        specialization: "Heart Specialist",
        experience: 15,
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
                for (Cardiologist i in cardiologistList)
                  CardiologistCard(
                    cardiologistInfo: i,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DoctorRequestForm(selectedCardiologist: i),
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
