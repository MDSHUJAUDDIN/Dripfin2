import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BudgetBaskets extends StatelessWidget {
  const BudgetBaskets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1C1E),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Budget Planning",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
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
              child: Row(
                children: [
                  Text(
                    "Budget Basket",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  const SizedBox(width: 100),
                  Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1A1C1E),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.add,
                            color: Color(0xFF34B67F),
                          ),
                          Text(
                            "Add",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF34B67F)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NewBasket(
                  icon: Image.asset('assets/icons/car.png',
                      width: 20, height: 20),
                  label: "New Car",
                  value: "Rs.5000"),
              NewBasket(
                  icon: Image.asset('assets/icons/house.png',
                      width: 20, height: 20),
                  label: "New House",
                  value: "Rs.5000"),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NewBasket(
                  icon: Image.asset('assets/icons/cloth.png',
                      width: 20, height: 20),
                  label: "New Cloth",
                  value: "Rs.5000"),
              NewBasket(
                  icon: Image.asset('assets/icons/plane.png',
                      width: 20, height: 20),
                  label: "Vacation",
                  value: "Rs.5000"),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NewBasket(
                  icon: Image.asset('assets/icons/marriage.png',
                      width: 20, height: 20),
                  label: "Marriage",
                  value: "Rs.5000"),
              NewBasket(
                  icon: Image.asset('assets/icons/heart.png',
                      width: 20, height: 20),
                  label: "Parent",
                  value: "Rs.5000"),
            ],
          ),
        ],
      ),
    );
  }
}

class NewBasket extends StatelessWidget {
  final Image icon;
  final String label;
  final String value;
  const NewBasket(
      {super.key,
      required this.icon,
      required this.label,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        child: Expanded(
          child: Container(
            width: 155,
            height: 142,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Row(
                  children: [
                    icon,
                    const SizedBox(width: 75),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(label,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(value,
                      style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xFFACB5BB),
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
              ]),
            ),
          ),
        ));
  }
}
