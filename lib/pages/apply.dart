import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/template/text_fields.dart';

class Apply extends StatefulWidget {
  const Apply({super.key});
  @override
  State<Apply> createState() {
    return _ApplyState();
  }
}

class _ApplyState extends State<Apply> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(),
        dobController = TextEditingController(),
        mobileController = TextEditingController(),
        emailController = TextEditingController(),
        clubNameController = TextEditingController();
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
          body: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 25,
              right: 25,
              bottom: 10,
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Apply for Membership",
                      style: GoogleFonts.libreCaslonDisplay(
                        fontSize: 29,
                        letterSpacing: 1,
                        color: const Color.fromRGBO(224, 171, 67, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFields(
                      textController: nameController,
                      hintText: "Full Name",
                      fieldIcon: const Icon(
                        Icons.person_outline,
                        color: Color.fromRGBO(224, 171, 67, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFields(
                      textController: dobController,
                      hintText: "Date of birth",
                      fieldIcon: const Icon(
                        Icons.date_range_outlined,
                        color: Color.fromRGBO(224, 171, 67, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFields(
                      textController: emailController,
                      hintText: "Email",
                      fieldIcon: const Icon(
                        Icons.email_outlined,
                        color: Color.fromRGBO(224, 171, 67, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFields(
                      textController: mobileController,
                      hintText: "Phone",
                      fieldIcon: const Icon(
                        Icons.phone_outlined,
                        color: Color.fromRGBO(224, 171, 67, 1),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 30,
                        bottom: 20,
                      ),
                      child: Divider(),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: Color.fromRGBO(224, 171, 67, 1),
                          ),
                          "Have you visited Prem's Collections before?",
                        ),
                        SizedBox(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: DropdownButton(
                        underline: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 70, 70, 70)),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 300,
                            minHeight: 50,
                          ),
                        ),
                        items: const [
                          DropdownMenuItem(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 5),
                              child: Text(
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                  "Not Visited"),
                            ),
                          ),
                        ],
                        onChanged: (value) {},
                        isExpanded: true,
                        icon: const Icon(
                            color: Color.fromRGBO(224, 171, 67, 1),
                            Icons.keyboard_arrow_down),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      softWrap: true,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Color.fromRGBO(224, 171, 67, 1),
                      ),
                      "Are you a member of any other club? If yes, enter the name.",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFields(
                      textController: clubNameController,
                      hintText: "Club name (Optional)",
                      fieldIcon: const Icon(Icons.apartment),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(224, 171, 67, 1),
                        ),
                        fixedSize: MaterialStatePropertyAll(
                          Size(
                            360,
                            55,
                          ),
                        ),
                      ),
                      child: const Text(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                          'APPLY NOW'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
