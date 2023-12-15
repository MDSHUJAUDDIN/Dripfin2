import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});
  @override
  State<MyPhone> createState() {
    return _MyPhoneState();
  }
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryCode = TextEditingController();
  @override
  void initState() {
    countryCode.text = '+91';
    super.initState();
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 53,
              ),
              Text(
                'Enter Your Number',
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 30, fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 53,
              ),
              Text(
                'You’ll receive an OTP that’ll help us verify your number.',
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(108, 114, 120, 1)),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 59,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(176, 176, 176, 1),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                      // alignment: Alignment.center,
                      child: TextField(
                        controller: countryCode,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      '|',
                      style: TextStyle(
                        color: Color.fromRGBO(176, 176, 176, 1),
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: '        Moblie'),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              SizedBox(
                width: 290,
                child: Text(
                  'By logging in the app you are agreeing to the Terms & Condiions.',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 11,
                      color: const Color.fromRGBO(35, 35, 35, 1),
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 31,
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromRGBO(52, 182, 127, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Get OTP'),
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't recieve an OTP? ",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(108, 114, 120, 1),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend',
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(52, 182, 127, 1)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
