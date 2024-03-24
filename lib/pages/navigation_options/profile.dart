import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/template/text_fields.dart';

class Profile extends StatefulWidget {
  const Profile({required this.backHome, super.key});
  final void Function() backHome;

  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  bool editMode = false;
  TextEditingController mobileController = TextEditingController(),
      whatsappController = TextEditingController(),
      emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
    mobileController.addListener(_editingListener);
  }

  @override
  void dispose() {
    mobileController.dispose();
    whatsappController.dispose();
    emailController.dispose();
    super.dispose();
  }

  String userName = "Mr. C. Alamgir Iqubal",
      dob = "15-02-1985",
      mobile = "9830012345",
      whatsapp = "9865522252",
      email = "alamgir@gmailmailer.com";

  String tempMobile = "", tempWhatsapp = "", tempEmail = "";
  void _editingListener() {
    tempMobile = mobileController.text;
    tempWhatsapp = whatsappController.text;
    tempEmail = emailController.text;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: widget.backHome,
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
                    "My\nProfile",
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        editMode = true;
                      });
                    },
                    icon: const Icon(
                      Icons.edit_outlined,
                      color: Color.fromRGBO(224, 171, 67, 1),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: SizedBox(
              height: 172 / 300 * (MediaQuery.of(context).size.width * 0.9),
              width: MediaQuery.of(context).size.width,
              child: Image.asset(fit: BoxFit.fill, "lib/assets/mem_card.png"),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              children: [
                const Expanded(
                  flex: 8,
                  child: Text(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      "Name:"),
                ),
                Expanded(
                    flex: 13,
                    child: Text(
                        softWrap: true,
                        style: const TextStyle(
                          color: Color.fromRGBO(224, 171, 67, 1),
                          fontSize: 17,
                        ),
                        userName))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              children: [
                const Expanded(
                  flex: 8,
                  child: Text(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      "Date of Birth:"),
                ),
                Expanded(
                  flex: 13,
                  child: Text(
                      style: const TextStyle(
                        color: Color.fromRGBO(224, 171, 67, 1),
                        fontSize: 17,
                      ),
                      dob),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              children: [
                const Expanded(
                  flex: 8,
                  child: Text(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      "Mobile no.:"),
                ),
                Expanded(
                  flex: 13,
                  child: editMode == false
                      ? Text(
                          style: const TextStyle(
                            color: Color.fromRGBO(224, 171, 67, 1),
                            fontSize: 17,
                          ),
                          mobile)
                      : TextFields(
                          hintText: mobile,
                          fieldIcon: const Icon(
                            Icons.brightness_1_outlined,
                            color: Colors.black,
                            size: 0,
                          ),
                          textController: mobileController),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              children: [
                const Expanded(
                  flex: 8,
                  child: Text(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      "Whatsapp no.:"),
                ),
                Expanded(
                  flex: 13,
                  child: editMode == false
                      ? Text(
                          style: const TextStyle(
                            color: Color.fromRGBO(224, 171, 67, 1),
                            fontSize: 17,
                          ),
                          whatsapp)
                      : TextFields(
                          hintText: whatsapp,
                          fieldIcon: const Icon(
                            Icons.brightness_1_outlined,
                            color: Colors.black,
                            size: 0,
                          ),
                          textController: whatsappController),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              children: [
                const Expanded(
                  flex: 8,
                  child: Text(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      "Email address:"),
                ),
                Expanded(
                    flex: 13,
                    child: editMode == false
                        ? Text(
                            softWrap: true,
                            style: const TextStyle(
                              color: Color.fromRGBO(224, 171, 67, 1),
                              fontSize: 17,
                            ),
                            email)
                        : TextFields(
                            hintText: email,
                            fieldIcon: const Icon(
                              Icons.brightness_1_outlined,
                              color: Colors.black,
                              size: 0,
                            ),
                            textController: emailController)),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          if (editMode == true)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (tempMobile != "" && tempMobile != mobile)
                        mobile = tempMobile;
                      if (tempWhatsapp != "" && tempWhatsapp != whatsapp)
                        whatsapp = tempWhatsapp;
                      if (tempEmail != "" && tempEmail != email)
                        email = tempEmail;
                      editMode = false;
                    });
                  },
                  child: const Text("Save"),
                ),
              ],
            )
        ],
      ),
    );
  }
}
