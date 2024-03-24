import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppc/pages/otp.dart';
import 'package:ppc/template/text_fields.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  String email = '';
  @override
  void initState() {
    super.initState();
    _emailController.addListener(
      () {
        email = _emailController.text;
      },
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Image.asset("lib/assets/logo.png"),
                    const SizedBox(
                      height: 15,
                    ),
                    Image.asset("lib/assets/name.png"),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Member Login",
                      style: GoogleFonts.libreCaslonDisplay(
                        fontSize: 29,
                        letterSpacing: 1,
                        color: const Color.fromRGBO(224, 171, 67, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Enter your email address to continue",
                      style: GoogleFonts.rosario(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          top: 13,
                          left: 20,
                          right: 20,
                          bottom: 250,
                        ),
                        child: TextFields(
                            textController: _emailController,
                            hintText: 'Email',
                            fieldIcon: const Icon(Icons.email_outlined))),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OTP(),
                          ),
                        );
                      },
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
                          'SEND OTP'),
                    ),
                    const SizedBox(
                      height: 10,
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
