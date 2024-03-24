import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:ppc/pages/services.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});
  @override
  State<OTP> createState() {
    return _OTPState();
  }
}

class _OTPState extends State<OTP> {
  final _pinPutController = OtpFieldController();
  String enteredPin = '';
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
                      "Enter OTP sent to your email address",
                      style: GoogleFonts.rosario(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 60,
                        right: 60,
                        bottom: 200,
                      ),
                      child: OTPTextField(
                        length: 4,
                        controller: _pinPutController,
                        onCompleted: (value) {
                          enteredPin = _pinPutController.toString();
                        },
                        fieldStyle: FieldStyle.box,
                        fieldWidth: 50,
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        width: MediaQuery.of(context).size.width,
                        otpFieldStyle: OtpFieldStyle(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          borderColor: const Color.fromARGB(255, 104, 104, 104),
                          focusBorderColor:
                              const Color.fromRGBO(224, 171, 67, 1),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Services(),
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
                          'LOGIN'),
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
