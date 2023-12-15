import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UupiId extends StatelessWidget {
  const UupiId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1C1E),
        title: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  "UUPI_ID",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Image.asset('assets/icons/share.png')
            ],
          ),
        ),
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(0),
          height: 100,
          width: double.infinity,
          decoration: const ShapeDecoration(
              color: Color(0xFF1A1C1E),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(30)))),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Scan this to receive payment",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 32),
        Container(
            width: 325,
            height: 324,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    width: 8,
                    color: const Color(0xFF269C76),
                    style: BorderStyle.solid)),
            child: Image.asset('assets/qrcode.jpg')),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "0xdrtsd41Q3...",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1A1C1E)),
              ),
            ),
            const Icon(Icons.copy)
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 40, top: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF34B67F),
                  minimumSize: const Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  "Request Payment",
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
