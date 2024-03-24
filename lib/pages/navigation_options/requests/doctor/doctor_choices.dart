import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/pages/navigation_options/requests/doctor/cardiologists.dart';

class DoctorChoices extends StatelessWidget {
  const DoctorChoices({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> doctorChoices = [
      "Cardiologist",
      "ENT Specialist",
      "Oncologist",
      "Eye Specialist",
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
                      "Doctor\nBooking",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      for (String i in doctorChoices)
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Cardiologists(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(50, 50, 50, 1),
                                ),
                                color: const Color.fromRGBO(30, 30, 30, 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 15,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Icon(
                                              color: Color.fromRGBO(
                                                  224, 171, 67, 1),
                                              Icons.person_add_alt_1_outlined,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          style: const TextStyle(
                                            fontSize: 18,
                                          ),
                                          i,
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      size: 16,
                                      Icons.arrow_forward_ios_outlined,
                                      color: Color.fromRGBO(224, 171, 67, 1),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
