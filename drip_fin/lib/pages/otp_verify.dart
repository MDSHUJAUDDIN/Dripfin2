import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({Key? key}) : super(key: key);

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
            alignment: Alignment.center,
          )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "OTP Verification",
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Please check your email to see the verification code",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF6C7278),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Pinput(
              obscureText: true,
              obscuringCharacter: '*',
              defaultPinTheme: PinTheme(
                  width: 71,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey))),
            ),
            const SizedBox(
              height: 22,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Send a code reload in",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFACB5BB),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(325, 60),
                    backgroundColor: const Color(0xFF34B67F),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    "Verify",
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
