import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.text, required this.prefix});

  final String text;
  final String prefix;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          Image.asset(prefix, height: 20),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey)
        ],
      ),
    );
  }
}

class Percent extends StatelessWidget {
  const Percent({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  final String text;
  final dynamic color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 30,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
      child: Center(
        child: Text(
          '$text%',
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
